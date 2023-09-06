using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace SocialNetwork
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private Data.DataContext dataContext;
        public ObservableCollection<Pair> Pairs { get; set; }
        public MainWindow()
        {
            InitializeComponent();
            dataContext = new Data.DataContext();
            Pairs = new ObservableCollection<Pair>();
            this.DataContext = this;
        }
        public class Pair
        {
            public String Key { get; set; } = null!;
            public String? Value { get; set; }
        }
        private void GenderButton_Click(object sender, RoutedEventArgs e)
        {
            var query = dataContext
                .Users
                .Select(m => new Pair() { Key = $"{m.Surname} {m.Name[0]}.", Value = m.Gender.Name });
            Pairs.Clear();
            foreach (var pair in query)
            {
                Pairs.Add(pair);
            }
        }

        private void AgeButton_Click(object sender, RoutedEventArgs e)
        {
            var today = DateTime.Today;
            var Query = dataContext.Users.Join(dataContext.Users, m1 => m1.Id, m2 => m2.Id,
                (m1, m2) => new Pair()
                {
                    Key = $"{m1.Surname} {m1.Name[0]}.",
                    Value = (today.Year - m2.Birthday.Year).ToString() // calculate age based on current date
                })
                .ToList();
            Pairs.Clear();
            foreach (var pair in Query)
            {
                Pairs.Add(pair);
            }
        }

        private void ListViewItem_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            // to do
        }

        private void ShowDeleted_Checked(object sender, RoutedEventArgs e)
        {
            // to do
        }

        private void ShowDeleted_Unchecked(object sender, RoutedEventArgs e)
        {
            // to do
        }

        private void AddGroupButton_Click(object sender, RoutedEventArgs e)
        {
            // to do
        }
    }
}
