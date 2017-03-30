using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_Entidad
{
    public class ParticipanteCE
    {
        private string _codpart;
        private string _dnice;
        private string _apePat;
        private string _apeMat;
        private string _nombres;
        private string _fechaNaci;
        private string _estadoCiv;
        private string _sexo;
        private string _direccion;
        private string _ubigeo;
        private string _telFijo;
        private string _telMovil;
        private string _opeMovil;
        private string _telFijo2;
        private string _telMovil2;
        private string _opeMovil2;
        private string _correo;
        private string _proocu;
        private string _proocuesp;

        public string codpart
        {
            get { return _codpart; }
            set { _codpart = value; }
        }

        public string dnice
        {
            get { return _dnice; }
            set { _dnice = value; }
        }
        public string correo
        {
            get { return _correo; }
            set { _correo = value; }
        }
        public string opeMovil
        {
            get { return _opeMovil; }
            set { _opeMovil = value; }
        }
        public string telMovil
        {
            get { return _telMovil; }
            set { _telMovil = value; }
        }
        public string telFijo
        {
            get { return _telFijo; }
            set { _telFijo = value; }
        }
        public string opeMovil2
        {
            get { return _opeMovil2; }
            set { _opeMovil2 = value; }
        }
        public string telMovil2
        {
            get { return _telMovil2; }
            set { _telMovil2 = value; }
        }
        public string telFijo2
        {
            get { return _telFijo2; }
            set { _telFijo2 = value; }
        }
        public string ubigeo
        {
            get { return _ubigeo; }
            set { _ubigeo = value; }
        }
        public string direccion
        {
            get { return _direccion; }
            set { _direccion = value; }
        }
        public string sexo
        {
            get { return _sexo; }
            set { _sexo = value; }
        }
        public string EstadoCiv
        {
            get { return _estadoCiv; }
            set { _estadoCiv = value; }
        }
        public string profeOcupa
        {
            get { return _proocu; }
            set { _proocu = value; }
        }
        public string fechaNaci
        {
            get { return _fechaNaci; }
            set { _fechaNaci = value; }
        }
        public string nombres
        {
            get { return _nombres; }
            set { _nombres = value; }
        }
        public string apeMat
        {
            get { return _apeMat; }
            set { _apeMat = value; }
        }
        public string apePat
        {
            get { return _apePat; }
            set { _apePat = value; }
        }
        public string proocuesp
        {
            get { return _proocuesp; }
            set { _proocuesp = value; }
        }

        public string redm { get; set; }
        public string redminteresado { get; set; }
        public string comoseEntero { get; set; }
    }
}
