using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Runtime.CompilerServices;

namespace ListOfGroup
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ObservableCollection<Students> students = new ObservableCollection<Students>();
        ObservableCollection<string> lblist;
        ObservableCollection<string> сmList;
        ObservableCollection<string> lbDel;
        public ObservableCollection<Students> CheckInCollection
        {
            get { return students; }
        }

        public class Students
        {
            public Students(string firstName, string lastName, string group, string age)
            {
                this.firstName = firstName;
                this.lastName = lastName;
                this.group = group;
                this.age = age;
            }
            public string firstName { get; set; }
            public string lastName { get; set; }
            public string group { get; set; }
            public string age { get; set; }
        }


        class ObservableCollection : INotifyPropertyChanged
        {
            public event PropertyChangedEventHandler PropertyChanged;
            public void OnPropertyChanged([CallerMemberName]string prop = "")
            {
                if (PropertyChanged != null)
                    PropertyChanged(this, new PropertyChangedEventArgs(prop));
            }

        }



        public MainWindow()
        {
            InitializeComponent();
        }



        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if ((NameTextBox.Text != "") && (SecondNameTextBox.Text != ""))
            {
                students.Add(new Students(NameTextBox.Text, SecondNameTextBox.Text, GroupTextBox.Text, AgeTextBox.Text));

                сmList.Insert(0, GroupTextBox.Text);

                cbList.ItemsSource = сmList.Distinct();
            }
            else MessageBox.Show("Введите элемент списка в текстовое поле");
        }

        private void BtnDelete_Click(object sender, RoutedEventArgs e)
        {
            lbDel = new ObservableCollection<string>();

            foreach (Students item in students)
            {
                lbDel.Add(item.firstName + " " + item.lastName);
            }
            string name = DelNameTextBox.Text;
            string secondName = DelSecondNameTextBox.Text;
            string fullName = name + " " + secondName;

            lbDel.Remove(fullName);
            сmList.Remove(fullName);

            var itemsToDelete = students.Where(stud => stud.firstName == name && stud.lastName == secondName).ToArray();
            foreach (var itemToDelete in itemsToDelete)
            {
               students.Remove(itemToDelete);
            }

            cbList.ItemsSource = сmList.Distinct();
            lbDel.Distinct();

            dataGridStudents.Items.Refresh();
            cbList.Items.Refresh();
        }

        private void BtnSave_Click(object sender, RoutedEventArgs e)
        {
            Students studs = dataGridStudents.SelectedItem as Students;
            if (dataGridStudents.SelectedItem != null)
            {
                studs.firstName = ChangeNameTextBox.Text;
                studs.lastName = ChangeSecondNameTextBox.Text;
                studs.age = ChangeAgeTextBox.Text;
                studs.group = ChangeGroupTextBox.Text;

                dataGridStudents.Items.Refresh();
                cbList.Items.Refresh();
            }
        }

        private void DataGridStudents_Loaded(object sender, RoutedEventArgs e)
        {
            students = new ObservableCollection<Students>();

            students.Add(new Students("Никита", "Беликов", "ИСиП-31", "18"));
            students.Add(new Students("Кирилл", "Чухарев", "ИСиП-21", "18"));

            dataGridStudents.ItemsSource = students;

            сmList = new ObservableCollection<string>();

            foreach (Students item in students)
            {
                сmList.Add(item.group);
            }

            cbList.ItemsSource = сmList.Distinct();
        }

        private void ComList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {

            lblist = new ObservableCollection<string>();

            foreach (Students item in students)
            {
                if (cbList.SelectedItem.ToString() == item.group)
                {
                    lblist.Add(item.firstName + " " + item.lastName);
                }
            }
            spisok.ItemsSource = lblist.Distinct();

        }

        private void AgeTextBox_PreviewTextInput(object sender, TextCompositionEventArgs e)
        {
            e.Handled = !(Char.IsDigit(e.Text, 0));
        }
    }

}


