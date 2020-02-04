using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebBasedPharmacistProject
{
    public class PharmacyDataTier
    {
        static String connString = ConfigurationManager.ConnectionStrings["ConnString"].ConnectionString;
        static SqlConnection myConn = new SqlConnection(connString);
        static System.Data.SqlClient.SqlCommand cmdString = new System.Data.SqlClient.SqlCommand();

        public DataSet AddPhysicians(string PHID, string FirstName, string LastName, string Gender, string WorkPhone, string HomePhone, string Email)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Add_Physician";

                //define input parameter
                cmdString.Parameters.Add("@PHID", SqlDbType.VarChar, 4).Value = PHID;
                cmdString.Parameters.Add("@FirstName", SqlDbType.VarChar, 25).Value = FirstName;
                cmdString.Parameters.Add("@LastName", SqlDbType.VarChar, 25).Value = LastName;
                cmdString.Parameters.Add("@Gender", SqlDbType.VarChar, 6).Value = Gender;
                cmdString.Parameters.Add("@WorkPhone", SqlDbType.VarChar, 7).Value = WorkPhone;
                cmdString.Parameters.Add("@HomePhone", SqlDbType.Int).Value = HomePhone;
                cmdString.Parameters.Add("@Email", SqlDbType.VarChar, 40).Value = Email;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }

        //add patient
        public DataSet AddPatient(string PATID, string FirstName, string MiddleInitial, string LastName, string Age,
                                    string Gender, DateTime DOB, string Address, string City,
                                    string State, string Zip, string HomePhone, string WorkPhone,
                                    string Email, string SSN, string CreditCard, string CC_CCV)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Add_Patient";

                //define input parameters
                cmdString.Parameters.Add("@PATID", SqlDbType.VarChar, 4).Value = PATID;
                cmdString.Parameters.Add("@FirstName", SqlDbType.VarChar, 25).Value = FirstName;
                cmdString.Parameters.Add("@MiddleInitial", SqlDbType.Char, 1).Value = MiddleInitial;
                cmdString.Parameters.Add("@LastName", SqlDbType.VarChar, 25).Value = LastName;
                cmdString.Parameters.Add("@Age", SqlDbType.VarChar, 3).Value = Age;
                cmdString.Parameters.Add("@Gender", SqlDbType.VarChar, 6).Value = Gender;
                cmdString.Parameters.Add("@DOB", SqlDbType.Date).Value = DOB;
                cmdString.Parameters.Add("@Address", SqlDbType.VarChar, 60).Value = Address;
                cmdString.Parameters.Add("@City", SqlDbType.VarChar, 60).Value = City;
                cmdString.Parameters.Add("@State", SqlDbType.Char, 2).Value = State;
                cmdString.Parameters.Add("@Zip", SqlDbType.Char, 5).Value = Zip;
                cmdString.Parameters.Add("@HomePhone", SqlDbType.VarChar, 7).Value = HomePhone;
                cmdString.Parameters.Add("@WorkPhone", SqlDbType.VarChar, 7).Value = WorkPhone;
                cmdString.Parameters.Add("@Email", SqlDbType.VarChar, 40).Value = Email;
                cmdString.Parameters.Add("@SSN", SqlDbType.Char, 9).Value = SSN;
                cmdString.Parameters.Add("@CreditCard", SqlDbType.Char, 16).Value = CreditCard;
                cmdString.Parameters.Add("@CC_CCV", SqlDbType.VarChar, 4).Value = CC_CCV;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public DataSet AddPrescription(string PID, string PHID, string PATID, string Prescription, string Dosage, string Description,  DateTime Date_Prescribed, string Refills)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Add_Prescription";

                //define input parameters
                cmdString.Parameters.Add("@PID", SqlDbType.VarChar, 4).Value = PID;
                cmdString.Parameters.Add("@PHID", SqlDbType.VarChar, 4).Value = PHID;
                cmdString.Parameters.Add("@PATID", SqlDbType.VarChar, 4).Value = PATID;
                cmdString.Parameters.Add("@Prescription", SqlDbType.VarChar, 20).Value = Prescription;
                cmdString.Parameters.Add("@Dosage", SqlDbType.VarChar, 20).Value = Dosage;
                cmdString.Parameters.Add("@Description", SqlDbType.VarChar, 60).Value = Description;
                cmdString.Parameters.Add("@Date_Prescribed", SqlDbType.Date).Value = Date_Prescribed;
                cmdString.Parameters.Add("@Refills", SqlDbType.VarChar, 2).Value = Refills;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();//
            }
        }
        public DataSet GetPatients(string PATID, string FirstName, string LastName)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Search_Patients";

                //define input parameters
                cmdString.Parameters.Add("@PATID", SqlDbType.VarChar, 4).Value = PATID;
                cmdString.Parameters.Add("@FirstName", SqlDbType.VarChar, 25).Value = FirstName;
                cmdString.Parameters.Add("@LastName", SqlDbType.VarChar, 25).Value = LastName;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public DataSet GetPhysicians(string PHID, string FirstName, string LastName)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Search_Physicians";

                //define input parameters
                cmdString.Parameters.Add("@PHID", SqlDbType.VarChar, 4).Value = PHID;
                cmdString.Parameters.Add("@FirstName", SqlDbType.VarChar, 25).Value = FirstName;
                cmdString.Parameters.Add("@LastName", SqlDbType.VarChar, 25).Value = LastName;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public DataSet GetPrescriptions(string PID, string PHID, string PATID)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Search_Prescriptions";

                //define input parameters
                cmdString.Parameters.Add("@PID", SqlDbType.VarChar, 4).Value = PID;
                cmdString.Parameters.Add("@PHID", SqlDbType.VarChar, 4).Value = PHID;
                cmdString.Parameters.Add("@PATID", SqlDbType.VarChar, 4).Value = PATID;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
 
        public DataSet UpdatePatient(string PATID, string FirstName, string MiddleInitial, string LastName, string Age,
                                    string Gender, DateTime DOB, string Address, string City,
                                    string State, string Zip, string HomePhone, string WorkPhone,
                                    string Email, string SSN, string CreditCard, string CC_CCV)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Update_Patient";

                //define input parameters
                cmdString.Parameters.Add("@PATID", SqlDbType.VarChar, 4).Value = PATID;
                cmdString.Parameters.Add("@FirstName", SqlDbType.VarChar, 25).Value = FirstName;
                cmdString.Parameters.Add("@MiddleInitial", SqlDbType.Char, 1).Value = MiddleInitial;
                cmdString.Parameters.Add("@LastName", SqlDbType.VarChar, 25).Value = LastName;
                cmdString.Parameters.Add("@Age", SqlDbType.VarChar, 3).Value = Age;
                cmdString.Parameters.Add("@Gender", SqlDbType.VarChar, 6).Value = Gender;
                cmdString.Parameters.Add("@DOB", SqlDbType.Date).Value = DOB;
                cmdString.Parameters.Add("@Address", SqlDbType.VarChar, 60).Value = Address;
                cmdString.Parameters.Add("@City", SqlDbType.VarChar, 60).Value = City;
                cmdString.Parameters.Add("@State", SqlDbType.Char, 2).Value = State;
                cmdString.Parameters.Add("@Zip", SqlDbType.Char, 5).Value = Zip;
                cmdString.Parameters.Add("@HomePhone", SqlDbType.VarChar, 7).Value = HomePhone;
                cmdString.Parameters.Add("@WorkPhone", SqlDbType.VarChar, 7).Value = WorkPhone;
                cmdString.Parameters.Add("@Email", SqlDbType.VarChar, 40).Value = Email;
                cmdString.Parameters.Add("@SSN", SqlDbType.Char, 9).Value = SSN;
                cmdString.Parameters.Add("@CreditCard", SqlDbType.Char, 16).Value = CreditCard;
                cmdString.Parameters.Add("@CC_CCV", SqlDbType.VarChar, 4).Value = CC_CCV;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public DataSet UpdatePhysician(string PHID, string FirstName, string LastName, string Gender, string WorkPhone, string HomePhone, string Email)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "UpdatePhysician";

                //define input parameter
                cmdString.Parameters.Add("@PHID", SqlDbType.VarChar, 4).Value = PHID;
                cmdString.Parameters.Add("@FirstName", SqlDbType.VarChar, 25).Value = FirstName;
                cmdString.Parameters.Add("@LastName", SqlDbType.VarChar, 25).Value = LastName;
                cmdString.Parameters.Add("@Gender", SqlDbType.VarChar, 6).Value = Gender;
                cmdString.Parameters.Add("@WorkPhone", SqlDbType.VarChar, 7).Value = WorkPhone;
                cmdString.Parameters.Add("@HomePhone", SqlDbType.Int).Value = HomePhone;
                cmdString.Parameters.Add("@Email", SqlDbType.VarChar, 40).Value = Email;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public DataSet UpdatePrescription(string PID, string PHID, string PATID, string Prescription, string Dosage, string Description, DateTime Date_Prescribed, string Refills)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "UpdatePrescription";

                //define input parameters
                cmdString.Parameters.Add("@PID", SqlDbType.VarChar, 4).Value = PID;
                cmdString.Parameters.Add("@PHID", SqlDbType.VarChar, 4).Value = PHID;
                cmdString.Parameters.Add("@PATID", SqlDbType.VarChar, 4).Value = PATID;
                cmdString.Parameters.Add("@Prescription", SqlDbType.VarChar, 20).Value = Prescription;
                cmdString.Parameters.Add("@Dosage", SqlDbType.VarChar, 20).Value = Dosage;
                cmdString.Parameters.Add("@Description", SqlDbType.VarChar, 60).Value = Description;
                cmdString.Parameters.Add("@Date_Prescribed", SqlDbType.Date).Value = Date_Prescribed;
                cmdString.Parameters.Add("@Refills", SqlDbType.VarChar, 2).Value = Refills;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public DataSet DeletePrescription(string PID)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Delete_Prescription";

                //define input parameters
                cmdString.Parameters.Add("@PID", SqlDbType.VarChar, 4).Value = PID;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public DataSet DeletePatient(string PATID)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Delete_Patient";

                //define input parameters
                cmdString.Parameters.Add("@PATID", SqlDbType.VarChar, 4).Value = PATID;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }
        }
        public DataSet DeletePhysician(string PHID)
        {
            try
            {
                //open connection
                myConn.Open();
                //Clear command argument
                cmdString.Parameters.Clear();
                //command
                cmdString.Connection = myConn;
                cmdString.CommandText = connString;
                cmdString.CommandType = CommandType.StoredProcedure;
                cmdString.CommandTimeout = 1500;
                cmdString.CommandText = "Delete_Physician";

                //define input parameters
                cmdString.Parameters.Add("@PHID", SqlDbType.VarChar, 4).Value = PHID;

                //adapter and dataset
                SqlDataAdapter aAdapter = new SqlDataAdapter();
                aAdapter.SelectCommand = cmdString;
                DataSet aDataSet = new DataSet();

                //filladapter
                aAdapter.Fill(aDataSet);
                //return data set
                return aDataSet;
            }
            catch (Exception ex)
            {
                throw new ArgumentException(ex.Message);
            }
            finally
            {
                myConn.Close();
            }

        }
    }
}