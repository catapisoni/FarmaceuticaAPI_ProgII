create database FarmaFinal
USE FarmaFinal
GO
/****** Object:  Table [dbo].[BARRIOS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BARRIOS](
	[id_barrio] [int] IDENTITY(1,1) NOT NULL,
	[nom_barrio] [varchar](50) NOT NULL,
	[id_localidad] [int] NULL,
 CONSTRAINT [pk_barrio] PRIMARY KEY CLUSTERED 
(
	[id_barrio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLIENTES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTES](
	[id_cliente] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NULL,
	[cuit_Obra_social] [int] NULL,
	[id_condicion_iva] [int] NULL,
 CONSTRAINT [pk_id_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CONDICIONES_IVA]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CONDICIONES_IVA](
	[id_cond_iva] [int] IDENTITY(1,1) NOT NULL,
	[cond_iva] [varchar](50) NOT NULL,
 CONSTRAINT [pk_condicion_iva] PRIMARY KEY CLUSTERED 
(
	[id_cond_iva] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DESCUENTOS_OS_VIGENTES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DESCUENTOS_OS_VIGENTES](
	[id_descuento_os] [int] IDENTITY(1,1) NOT NULL,
	[descuento_obra_social] [decimal](8, 2) NULL,
	[id_producto] [int] NULL,
	[cuit_obra_social] [int] NULL,
	[id_sucursal] [int] NULL,
	[fecha_descuento] [date] NULL,
 CONSTRAINT [pk_id_descuento] PRIMARY KEY CLUSTERED 
(
	[id_descuento_os] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLE_OC]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLE_OC](
	[id_detalle_oc] [int] IDENTITY(1,1) NOT NULL,
	[id_orden_compra] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[precio_compra] [decimal](12, 2) NULL,
 CONSTRAINT [pk_detalle_oc] PRIMARY KEY CLUSTERED 
(
	[id_detalle_oc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DETALLES_FACTURA]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DETALLES_FACTURA](
	[id_detalle_factura] [int] IDENTITY(1,1) NOT NULL,
	[id_factura] [int] NULL,
	[id_producto] [int] NULL,
	[cantidad] [int] NULL,
	[precio_venta] [decimal](10, 2) NULL,
	[id_validacion] [int] NULL,
	[id_descuento_os] [int] NULL,
	[descuento_sucursal] [decimal](10, 2) NULL,
 CONSTRAINT [pk_id_detalle] PRIMARY KEY CLUSTERED 
(
	[id_detalle_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADOS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADOS](
	[id_empleado] [int] IDENTITY(1,1) NOT NULL,
	[id_persona] [int] NOT NULL,
	[observacion] [varchar](100) NULL,
 CONSTRAINT [pk_id_empleado] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPRESAS_LOGISTICA]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPRESAS_LOGISTICA](
	[cuit_empresa_logistica] [int] IDENTITY(1,1) NOT NULL,
	[nom_empresa_logistica] [varchar](70) NULL,
	[id_barrio] [int] NULL,
	[id_condicion_iva] [int] NULL,
	[responsable_entrega] [varchar](70) NULL,
	[direccion] [varchar](70) NULL,
	[altura] [int] NULL,
 CONSTRAINT [pk_empresas_logistica] PRIMARY KEY CLUSTERED 
(
	[cuit_empresa_logistica] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FACTURAS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FACTURAS](
	[id_factura] [int] IDENTITY(1,1) NOT NULL,
	[fecha_factura] [date] NULL,
	[id_empleado] [int] NULL,
	[id_forma_pago] [int] NULL,
	[id_cliente] [int] NULL,
	[id_sucursal] [int] NULL,
	[cuit_obra_social] [int] NULL,
	[observaciones] [varchar](150) NULL,
 CONSTRAINT [pk_factura] PRIMARY KEY CLUSTERED 
(
	[id_factura] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FORMAS_PAGO]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FORMAS_PAGO](
	[id_forma_pago] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_forma_pago] PRIMARY KEY CLUSTERED 
(
	[id_forma_pago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[localidades]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[localidades](
	[id_localidad] [int] IDENTITY(1,1) NOT NULL,
	[nom_localidad] [varchar](30) NOT NULL,
	[id_provincia] [int] NOT NULL,
 CONSTRAINT [pk_localidades] PRIMARY KEY CLUSTERED 
(
	[id_localidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoginGerentes]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoginGerentes](
	[usuarioG] [varchar](50) NOT NULL,
	[passG] [varchar](50) NULL,
 CONSTRAINT [pk_usuarioG] PRIMARY KEY CLUSTERED 
(
	[usuarioG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LOGINS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOGINS](
	[usuario] [varchar](50) NOT NULL,
	[pass] [varchar](50) NULL,
 CONSTRAINT [pk_usuario] PRIMARY KEY CLUSTERED 
(
	[usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEDICOS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEDICOS](
	[matricula_medico] [int] NOT NULL,
	[id_persona] [int] NULL,
	[id_especialidad] [int] NULL,
 CONSTRAINT [pk_matricula_medico] PRIMARY KEY CLUSTERED 
(
	[matricula_medico] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MESES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MESES](
	[id_mes] [int] NOT NULL,
	[mes] [varchar](50) NULL,
 CONSTRAINT [pk_id_mes] PRIMARY KEY CLUSTERED 
(
	[id_mes] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OBRAS_SOCIALES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OBRAS_SOCIALES](
	[cuit_obra_social] [int] IDENTITY(1,1) NOT NULL,
	[nom_obra_social] [varchar](50) NOT NULL,
	[direccion] [varchar](60) NULL,
	[altura] [int] NULL,
	[id_barrio] [int] NULL,
 CONSTRAINT [pk_obra_social] PRIMARY KEY CLUSTERED 
(
	[cuit_obra_social] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ORDENES_DE_COMPRA]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ORDENES_DE_COMPRA](
	[id_orden_compra] [int] IDENTITY(1,1) NOT NULL,
	[condicion_entrega] [varchar](100) NULL,
	[fecha_oc] [date] NULL,
	[id_forma_pago] [int] NULL,
	[cuit_empresa_logistica] [int] NULL,
	[id_empleado] [int] NULL,
	[id_sucursal] [int] NULL,
 CONSTRAINT [pk_orden_compra] PRIMARY KEY CLUSTERED 
(
	[id_orden_compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PERSONAS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PERSONAS](
	[id_persona] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[id_tipo_documento] [int] NULL,
	[numero_documento] [int] NULL,
	[fecha_nac] [date] NULL,
	[mail] [varchar](50) NULL,
	[telefono] [varchar](50) NULL,
	[Direccion] [varchar](150) NOT NULL,
	[altura] [int] NULL,
	[id_barrio] [int] NULL,
 CONSTRAINT [pk_id_persona] PRIMARY KEY CLUSTERED 
(
	[id_persona] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTOS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTOS](
	[id_producto] [int] IDENTITY(1,1) NOT NULL,
	[vta_receta] [bit] NULL,
	[descripcion] [varchar](150) NOT NULL,
	[nombre_comercial] [varchar](100) NOT NULL,
	[cod_barras] [int] NOT NULL,
	[precio] [decimal](18, 0) NOT NULL,
	[vencimiento] [date] NOT NULL,
	[id_tipo_producto] [int] NULL,
	[baja] [bit] NULL,
 CONSTRAINT [pk_id_producto] PRIMARY KEY CLUSTERED 
(
	[id_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[provincias]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[provincias](
	[id_provincia] [int] IDENTITY(1,1) NOT NULL,
	[nom_provincia] [varchar](30) NOT NULL,
 CONSTRAINT [pk_provincias] PRIMARY KEY CLUSTERED 
(
	[id_provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RECETAS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RECETAS](
	[id_receta] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NOT NULL,
	[matricula_medico] [int] NULL,
 CONSTRAINT [pk_id_receta] PRIMARY KEY CLUSTERED 
(
	[id_receta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reembolsos_os]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reembolsos_os](
	[id_reembolso] [int] IDENTITY(1,1) NOT NULL,
	[id_detalle_factura] [int] NULL,
	[reembolsado] [bit] NULL,
 CONSTRAINT [pk_reembolsos_os] PRIMARY KEY CLUSTERED 
(
	[id_reembolso] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[STOCKS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[STOCKS](
	[id_stock] [int] IDENTITY(1,1) NOT NULL,
	[cantidad] [int] NULL,
	[id_producto] [int] NULL,
	[id_orden_compra] [int] NULL,
	[id_sucursal] [int] NULL,
	[stock_minimo] [int] NULL,
	[stock_maximo] [int] NULL,
	[lote] [int] NULL,
	[vencimiento] [datetime] NULL,
 CONSTRAINT [pk_id_stock] PRIMARY KEY CLUSTERED 
(
	[id_stock] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SUCURSALES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SUCURSALES](
	[Id_Sucursal] [int] IDENTITY(1,1) NOT NULL,
	[nom_sucursaL] [varchar](100) NOT NULL,
	[direccion] [varchar](150) NOT NULL,
	[altura] [int] NULL,
	[id_barrio] [int] NULL,
 CONSTRAINT [pk_Id_Sucursal] PRIMARY KEY CLUSTERED 
(
	[Id_Sucursal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOS_DOC]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOS_DOC](
	[id_tipo_documento] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](40) NOT NULL,
 CONSTRAINT [pk_tipos_doc] PRIMARY KEY CLUSTERED 
(
	[id_tipo_documento] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_especialidad]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_especialidad](
	[id_tipo_especialidad] [int] IDENTITY(1,1) NOT NULL,
	[especialidad] [varchar](30) NOT NULL,
 CONSTRAINT [pk_tipos_especialidad] PRIMARY KEY CLUSTERED 
(
	[id_tipo_especialidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tipos_productos]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tipos_productos](
	[id_tipo_producto] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [pk_tipos_producto] PRIMARY KEY CLUSTERED 
(
	[id_tipo_producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRIMESTRES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRIMESTRES](
	[id_trimestre] [int] NOT NULL,
	[trismestre] [varchar](100) NULL,
 CONSTRAINT [pk_id_trim] PRIMARY KEY CLUSTERED 
(
	[id_trimestre] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VALIDACIONES_COBERTURA]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VALIDACIONES_COBERTURA](
	[id_validacion] [int] IDENTITY(1,1) NOT NULL,
	[nro_afiliado] [int] NOT NULL,
	[id_receta] [int] NULL,
	[cuit_obra_social] [int] NULL,
	[fecha_validacion] [date] NULL,
 CONSTRAINT [pk_id_validacion] PRIMARY KEY CLUSTERED 
(
	[id_validacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BARRIOS]  WITH CHECK ADD  CONSTRAINT [fk_barrio_localidades] FOREIGN KEY([id_localidad])
REFERENCES [dbo].[localidades] ([id_localidad])
GO
ALTER TABLE [dbo].[BARRIOS] CHECK CONSTRAINT [fk_barrio_localidades]
GO
ALTER TABLE [dbo].[CLIENTES]  WITH CHECK ADD  CONSTRAINT [fk_cuit_Obra_social2] FOREIGN KEY([cuit_Obra_social])
REFERENCES [dbo].[OBRAS_SOCIALES] ([cuit_obra_social])
GO
ALTER TABLE [dbo].[CLIENTES] CHECK CONSTRAINT [fk_cuit_Obra_social2]
GO
ALTER TABLE [dbo].[CLIENTES]  WITH CHECK ADD  CONSTRAINT [fk_id_condicion_iva] FOREIGN KEY([id_condicion_iva])
REFERENCES [dbo].[CONDICIONES_IVA] ([id_cond_iva])
GO
ALTER TABLE [dbo].[CLIENTES] CHECK CONSTRAINT [fk_id_condicion_iva]
GO
ALTER TABLE [dbo].[CLIENTES]  WITH CHECK ADD  CONSTRAINT [fk_id_persona4] FOREIGN KEY([id_persona])
REFERENCES [dbo].[PERSONAS] ([id_persona])
GO
ALTER TABLE [dbo].[CLIENTES] CHECK CONSTRAINT [fk_id_persona4]
GO
ALTER TABLE [dbo].[DESCUENTOS_OS_VIGENTES]  WITH CHECK ADD  CONSTRAINT [fk_id_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[DESCUENTOS_OS_VIGENTES] CHECK CONSTRAINT [fk_id_producto]
GO
ALTER TABLE [dbo].[DESCUENTOS_OS_VIGENTES]  WITH CHECK ADD  CONSTRAINT [fk_obra_social] FOREIGN KEY([cuit_obra_social])
REFERENCES [dbo].[OBRAS_SOCIALES] ([cuit_obra_social])
GO
ALTER TABLE [dbo].[DESCUENTOS_OS_VIGENTES] CHECK CONSTRAINT [fk_obra_social]
GO
ALTER TABLE [dbo].[DESCUENTOS_OS_VIGENTES]  WITH CHECK ADD  CONSTRAINT [fk_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[SUCURSALES] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[DESCUENTOS_OS_VIGENTES] CHECK CONSTRAINT [fk_sucursal]
GO
ALTER TABLE [dbo].[DETALLE_OC]  WITH CHECK ADD  CONSTRAINT [fk_detalle_oc_compra] FOREIGN KEY([id_orden_compra])
REFERENCES [dbo].[ORDENES_DE_COMPRA] ([id_orden_compra])
GO
ALTER TABLE [dbo].[DETALLE_OC] CHECK CONSTRAINT [fk_detalle_oc_compra]
GO
ALTER TABLE [dbo].[DETALLE_OC]  WITH CHECK ADD  CONSTRAINT [fk_detalle_oc_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[DETALLE_OC] CHECK CONSTRAINT [fk_detalle_oc_producto]
GO
ALTER TABLE [dbo].[DETALLES_FACTURA]  WITH CHECK ADD  CONSTRAINT [fk_detalle_factura] FOREIGN KEY([id_factura])
REFERENCES [dbo].[FACTURAS] ([id_factura])
GO
ALTER TABLE [dbo].[DETALLES_FACTURA] CHECK CONSTRAINT [fk_detalle_factura]
GO
ALTER TABLE [dbo].[DETALLES_FACTURA]  WITH CHECK ADD  CONSTRAINT [fk_detalle_factura_descuento] FOREIGN KEY([id_descuento_os])
REFERENCES [dbo].[DESCUENTOS_OS_VIGENTES] ([id_descuento_os])
GO
ALTER TABLE [dbo].[DETALLES_FACTURA] CHECK CONSTRAINT [fk_detalle_factura_descuento]
GO
ALTER TABLE [dbo].[DETALLES_FACTURA]  WITH CHECK ADD  CONSTRAINT [fk_detalle_factura_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[DETALLES_FACTURA] CHECK CONSTRAINT [fk_detalle_factura_producto]
GO
ALTER TABLE [dbo].[DETALLES_FACTURA]  WITH CHECK ADD  CONSTRAINT [fk_detalle_factura_validacion] FOREIGN KEY([id_validacion])
REFERENCES [dbo].[VALIDACIONES_COBERTURA] ([id_validacion])
GO
ALTER TABLE [dbo].[DETALLES_FACTURA] CHECK CONSTRAINT [fk_detalle_factura_validacion]
GO
ALTER TABLE [dbo].[EMPLEADOS]  WITH CHECK ADD  CONSTRAINT [fk_id_persona3] FOREIGN KEY([id_persona])
REFERENCES [dbo].[PERSONAS] ([id_persona])
GO
ALTER TABLE [dbo].[EMPLEADOS] CHECK CONSTRAINT [fk_id_persona3]
GO
ALTER TABLE [dbo].[EMPRESAS_LOGISTICA]  WITH CHECK ADD  CONSTRAINT [fk_empresa_barrio] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[BARRIOS] ([id_barrio])
GO
ALTER TABLE [dbo].[EMPRESAS_LOGISTICA] CHECK CONSTRAINT [fk_empresa_barrio]
GO
ALTER TABLE [dbo].[EMPRESAS_LOGISTICA]  WITH CHECK ADD  CONSTRAINT [fk_empresa_iva] FOREIGN KEY([id_condicion_iva])
REFERENCES [dbo].[CONDICIONES_IVA] ([id_cond_iva])
GO
ALTER TABLE [dbo].[EMPRESAS_LOGISTICA] CHECK CONSTRAINT [fk_empresa_iva]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [fk_factura_cliente] FOREIGN KEY([id_cliente])
REFERENCES [dbo].[CLIENTES] ([id_cliente])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [fk_factura_cliente]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [fk_factura_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[EMPLEADOS] ([id_empleado])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [fk_factura_empleado]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [fk_factura_forma_pago] FOREIGN KEY([id_forma_pago])
REFERENCES [dbo].[FORMAS_PAGO] ([id_forma_pago])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [fk_factura_forma_pago]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [fk_facturas_cuit_obra_social] FOREIGN KEY([cuit_obra_social])
REFERENCES [dbo].[OBRAS_SOCIALES] ([cuit_obra_social])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [fk_facturas_cuit_obra_social]
GO
ALTER TABLE [dbo].[FACTURAS]  WITH CHECK ADD  CONSTRAINT [fk_facturas_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[SUCURSALES] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[FACTURAS] CHECK CONSTRAINT [fk_facturas_sucursal]
GO
ALTER TABLE [dbo].[localidades]  WITH CHECK ADD  CONSTRAINT [fk_provincias] FOREIGN KEY([id_provincia])
REFERENCES [dbo].[provincias] ([id_provincia])
GO
ALTER TABLE [dbo].[localidades] CHECK CONSTRAINT [fk_provincias]
GO
ALTER TABLE [dbo].[MEDICOS]  WITH CHECK ADD  CONSTRAINT [fk_id_especialidad] FOREIGN KEY([id_especialidad])
REFERENCES [dbo].[tipos_especialidad] ([id_tipo_especialidad])
GO
ALTER TABLE [dbo].[MEDICOS] CHECK CONSTRAINT [fk_id_especialidad]
GO
ALTER TABLE [dbo].[MEDICOS]  WITH CHECK ADD  CONSTRAINT [fk_id_persona] FOREIGN KEY([id_persona])
REFERENCES [dbo].[PERSONAS] ([id_persona])
GO
ALTER TABLE [dbo].[MEDICOS] CHECK CONSTRAINT [fk_id_persona]
GO
ALTER TABLE [dbo].[OBRAS_SOCIALES]  WITH CHECK ADD  CONSTRAINT [fk_obra_social_barrio] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[BARRIOS] ([id_barrio])
GO
ALTER TABLE [dbo].[OBRAS_SOCIALES] CHECK CONSTRAINT [fk_obra_social_barrio]
GO
ALTER TABLE [dbo].[ORDENES_DE_COMPRA]  WITH CHECK ADD  CONSTRAINT [fk_orden_compra_empleado] FOREIGN KEY([id_empleado])
REFERENCES [dbo].[EMPLEADOS] ([id_empleado])
GO
ALTER TABLE [dbo].[ORDENES_DE_COMPRA] CHECK CONSTRAINT [fk_orden_compra_empleado]
GO
ALTER TABLE [dbo].[ORDENES_DE_COMPRA]  WITH CHECK ADD  CONSTRAINT [fk_orden_compra_empresa] FOREIGN KEY([cuit_empresa_logistica])
REFERENCES [dbo].[EMPRESAS_LOGISTICA] ([cuit_empresa_logistica])
GO
ALTER TABLE [dbo].[ORDENES_DE_COMPRA] CHECK CONSTRAINT [fk_orden_compra_empresa]
GO
ALTER TABLE [dbo].[ORDENES_DE_COMPRA]  WITH CHECK ADD  CONSTRAINT [fk_orden_compra_forma_pago] FOREIGN KEY([id_forma_pago])
REFERENCES [dbo].[FORMAS_PAGO] ([id_forma_pago])
GO
ALTER TABLE [dbo].[ORDENES_DE_COMPRA] CHECK CONSTRAINT [fk_orden_compra_forma_pago]
GO
ALTER TABLE [dbo].[ORDENES_DE_COMPRA]  WITH CHECK ADD  CONSTRAINT [fk_orden_compra_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[SUCURSALES] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[ORDENES_DE_COMPRA] CHECK CONSTRAINT [fk_orden_compra_sucursal]
GO
ALTER TABLE [dbo].[PERSONAS]  WITH CHECK ADD  CONSTRAINT [fk_id_barrio2] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[BARRIOS] ([id_barrio])
GO
ALTER TABLE [dbo].[PERSONAS] CHECK CONSTRAINT [fk_id_barrio2]
GO
ALTER TABLE [dbo].[PERSONAS]  WITH CHECK ADD  CONSTRAINT [fk_id_tipo_documento] FOREIGN KEY([id_tipo_documento])
REFERENCES [dbo].[TIPOS_DOC] ([id_tipo_documento])
GO
ALTER TABLE [dbo].[PERSONAS] CHECK CONSTRAINT [fk_id_tipo_documento]
GO
ALTER TABLE [dbo].[PRODUCTOS]  WITH CHECK ADD  CONSTRAINT [fk_id_tipo_producto] FOREIGN KEY([id_tipo_producto])
REFERENCES [dbo].[tipos_productos] ([id_tipo_producto])
GO
ALTER TABLE [dbo].[PRODUCTOS] CHECK CONSTRAINT [fk_id_tipo_producto]
GO
ALTER TABLE [dbo].[RECETAS]  WITH CHECK ADD  CONSTRAINT [fk_matricula_medico] FOREIGN KEY([matricula_medico])
REFERENCES [dbo].[MEDICOS] ([matricula_medico])
GO
ALTER TABLE [dbo].[RECETAS] CHECK CONSTRAINT [fk_matricula_medico]
GO
ALTER TABLE [dbo].[reembolsos_os]  WITH CHECK ADD  CONSTRAINT [fk_reembolso_detalle_factura] FOREIGN KEY([id_detalle_factura])
REFERENCES [dbo].[DETALLES_FACTURA] ([id_detalle_factura])
GO
ALTER TABLE [dbo].[reembolsos_os] CHECK CONSTRAINT [fk_reembolso_detalle_factura]
GO
ALTER TABLE [dbo].[STOCKS]  WITH CHECK ADD  CONSTRAINT [fk_id_sucursal] FOREIGN KEY([id_sucursal])
REFERENCES [dbo].[SUCURSALES] ([Id_Sucursal])
GO
ALTER TABLE [dbo].[STOCKS] CHECK CONSTRAINT [fk_id_sucursal]
GO
ALTER TABLE [dbo].[STOCKS]  WITH CHECK ADD  CONSTRAINT [fk_stock_id_orden_compra] FOREIGN KEY([id_orden_compra])
REFERENCES [dbo].[ORDENES_DE_COMPRA] ([id_orden_compra])
GO
ALTER TABLE [dbo].[STOCKS] CHECK CONSTRAINT [fk_stock_id_orden_compra]
GO
ALTER TABLE [dbo].[STOCKS]  WITH CHECK ADD  CONSTRAINT [fk_stock_id_producto] FOREIGN KEY([id_producto])
REFERENCES [dbo].[PRODUCTOS] ([id_producto])
GO
ALTER TABLE [dbo].[STOCKS] CHECK CONSTRAINT [fk_stock_id_producto]
GO
ALTER TABLE [dbo].[SUCURSALES]  WITH CHECK ADD  CONSTRAINT [fk_Id_barrio] FOREIGN KEY([id_barrio])
REFERENCES [dbo].[BARRIOS] ([id_barrio])
GO
ALTER TABLE [dbo].[SUCURSALES] CHECK CONSTRAINT [fk_Id_barrio]
GO
ALTER TABLE [dbo].[VALIDACIONES_COBERTURA]  WITH CHECK ADD  CONSTRAINT [fk_cuit_obra_social] FOREIGN KEY([cuit_obra_social])
REFERENCES [dbo].[OBRAS_SOCIALES] ([cuit_obra_social])
GO
ALTER TABLE [dbo].[VALIDACIONES_COBERTURA] CHECK CONSTRAINT [fk_cuit_obra_social]
GO
ALTER TABLE [dbo].[VALIDACIONES_COBERTURA]  WITH CHECK ADD  CONSTRAINT [fk_id_receta] FOREIGN KEY([id_receta])
REFERENCES [dbo].[RECETAS] ([id_receta])
GO
ALTER TABLE [dbo].[VALIDACIONES_COBERTURA] CHECK CONSTRAINT [fk_id_receta]
GO



set dateformat dmy

--–TABLA N°1
----TIPOS PRODUCTOS

INSERT INTO tipos_productos(descripcion) VALUES('PRODUCTOS NATURALES')
INSERT INTO tipos_productos(descripcion) VALUES('MEDICAMENTOS VITALES')
INSERT INTO tipos_productos(descripcion) VALUES('MEDICAMENTO DE ALTO COSTO')
INSERT INTO tipos_productos(descripcion) VALUES('MEDICAMENTO GENERICO')
INSERT INTO tipos_productos(descripcion) VALUES('FOTOSENSIBLES')
INSERT INTO tipos_productos(descripcion) VALUES('ORTOPEDIA')
INSERT INTO tipos_productos(descripcion) VALUES('ESTETICA')
INSERT INTO tipos_productos(descripcion) VALUES('PERFUMERIA')
INSERT INTO tipos_productos(descripcion) VALUES('HIERBAS MEDICINALES')
INSERT INTO tipos_productos(descripcion) VALUES('LIMPIEZA')
INSERT INTO tipos_productos(descripcion) VALUES('HIGIENE PERSONAL')


--Tabla N°2
--–TIPOS_ESPECIALIDAD


INSERT INTO tipos_especialidad ( especialidad) VALUES('Pediatría');
INSERT INTO tipos_especialidad ( especialidad)  VALUES('Psiquiatría');
INSERT INTO tipos_especialidad  ( especialidad)  VALUES('Gerontología');
INSERT INTO tipos_especialidad ( especialidad)  VALUES('Ginecología');
INSERT INTO tipos_especialidad  ( especialidad)  VALUES('Traumatología');
INSERT INTO tipos_especialidad  ( especialidad)  VALUES('Clínica Médica');
INSERT INTO tipos_especialidad (especialidad) VALUES('Cardiología');
INSERT INTO tipos_especialidad ( especialidad) VALUES('Nefrología');
INSERT INTO tipos_especialidad ( especialidad) VALUES('Urología');
INSERT INTO tipos_especialidad ( especialidad) VALUES('Endocrinología');
INSERT INTO tipos_especialidad ( especialidad) VALUES('Oncología');

--–TABLA N°3
--PROVINCIAS



insert into provincias(nom_provincia) values('BUENOS AIRES')
insert into provincias(nom_provincia) values('CORDOBA')
insert into provincias(nom_provincia) values('SANTA FE')
insert into provincias(nom_provincia) values('CORRIENTES')
insert into provincias(nom_provincia) values('ENTRE RIOS')
insert into provincias(nom_provincia) values('MISIONES')
insert into provincias(nom_provincia) values('FORMOSA')
insert into provincias(nom_provincia) values('CHACO')
insert into provincias(nom_provincia) values('SANTIAGO DEL ESTERO')
insert into provincias(nom_provincia) values('TUCUMAN')
insert into provincias(nom_provincia) values('SALTA')
insert into provincias(nom_provincia) values('JUJUY')
insert into provincias(nom_provincia) values('LA RIOJA')
insert into provincias(nom_provincia) values('SAN JUAN')
insert into provincias(nom_provincia) values('MENDOZA')
insert into provincias(nom_provincia) values('LA PAMPA')
insert into provincias(nom_provincia) values('SAN LUIS')
insert into provincias(nom_provincia) values('CATAMARCA')
insert into provincias(nom_provincia) values('RIO NEGRO')
insert into provincias(nom_provincia) values('NEUQUEN')
insert into provincias(nom_provincia) values('SANTA CRUZ')
insert into provincias(nom_provincia) values('TIERRA DEL FUEGO')

--–TABLA N°4
--LOCALIDADES
--CORDOBA 

INSERT INTO LOCALIDADES( nom_localidad,id_provincia) VALUES ('Aguas de Oro', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Almafuerte', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Alta Gracia', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Anisacate',2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Arroyito', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Ascochinga', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Bell Ville', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Bialet Masse', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Cabalango', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Capilla del Monte', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Cordoba Capital', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Cosquin', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Cruz del Eje', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Jesus Maria', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('La Calera', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('La Cumbre', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('La Falda', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Mendiolaza', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Rio Ceballos', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Saldan', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Salsipuedes', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Tanti', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Unquillo', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Villa Allende', 2)
INSERT INTO LOCALIDADES(nom_localidad,id_provincia) VALUES ('Villa Carlos Paz', 2)

--SANTA FE
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('ROSARIO',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('SANTA FE',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('GENERAL LOPEZ',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('GENERAL OBLIGADO',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('CASTELLANOS',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('SAN LORENZO',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('LAS COLONIAS',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('CONSTITUCION',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('CASEROS',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('SAN JERONIMO',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('SAN CRISTOBAL',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('IRIONDO',3)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('SAN MARTIN',3)

--MENDOZA
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('GUAYMALLEN',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('GODOY CRUZ',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('SAN RAFAEL',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('LAS HERAS',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('MAIPU',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('LUJAN DE CUYO',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('SAN MARTIN',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('RIVADAVIA',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('TUNUYAN',15)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('USPALLATA',15)

--BUENOS AIRES
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('LA MATANZA',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('LA PLATA',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('GENERAL PUEYRREDON',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('LOMAS DE ZAMORA',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('QUILMES',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('ALMIRANTE BROWN',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('MERLO',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('LANUS',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('MORENO',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('FLORENCIO VARELA',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('GENERAL SAN MARTIN',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('TIGRE',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('AVELLANEDA',1)
INSERT INTO localidades(nom_localidad,id_provincia)VALUES('BERAZATEGUI',1)

--–TABLA N°5
--BARRIOS

INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('CENTRO',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('PUEYRREDON',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('GENERAL PAZ',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('ALTA CORDOBA',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('COFICO',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('TALLERES',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('ALBERDI',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('ALTO ALBERDI',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('CERRO DE LAS ROSAS',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('URCA',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('PATRICIOS',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('YOFRE',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('IPONA',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('NUEVA CORDOBA',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('LOS NARANJOS',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('LAS VIOLETAS',34)
INSERT INTO BARRIOS(NOM_BARRIO,id_localidad)VALUES('COMERCIAL',34)

--VILLA CARLOS PAZ
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('LA CUESTA',48)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('SANTA RITA',48)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('LA QUINTA',48)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('LOS CAROLINOS',48)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('COLINAS',48)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('SAN PEDRO',48)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('PLAYAS DE ORO',48)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('MIGUEL MUÑOZ',48)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('CENTRO',48)

--VILLA ALLENDE
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('CONDOR BAJO',47)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('CONDOR ALTO',47)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('ESPAÑOL',47)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('INDUSTRIAL',47)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('LAS ROSAS',47)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('CORDOBA GOLF',47)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('LAS POLINESIAS',47)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('CENTRO',47)
INSERT INTO BARRIOS(nom_barrio,id_localidad)VALUES('LA AMELIA',47)


--–TABLA N°6
--–TIPOS_DOC

INSERT INTO TIPOS_DOC(DESCRIPCION) VALUES('DNI TARJETA')
INSERT INTO TIPOS_DOC(DESCRIPCION) VALUES('DNI LIBRETA CELESTE')
INSERT INTO TIPOS_DOC(DESCRIPCION) VALUES('DNI LIBRETA VERDE')
INSERT INTO TIPOS_DOC(DESCRIPCION) VALUES('LIBRETA DE ENROLAMIENTO')
INSERT INTO TIPOS_DOC(DESCRIPCION) VALUES('LIBRETA CIVICA')
INSERT INTO TIPOS_DOC(DESCRIPCION) VALUES('PASAPORTE')



--–TABLA N°7
--TIPOS FORMAS DE PAGO

INSERT INTO FORMAS_PAGO(descripcion)VALUES('EFECTIVO')
INSERT INTO FORMAS_PAGO(descripcion)VALUES('TARJETA DEBITO')
INSERT INTO FORMAS_PAGO(descripcion)VALUES('TARJETA DE CREDITO')
INSERT INTO FORMAS_PAGO(descripcion)VALUES('TRANSFERENCIA')
INSERT INTO FORMAS_PAGO(descripcion)VALUES('MERCADO PAGO')
INSERT INTO FORMAS_PAGO(descripcion)VALUES('CHEQUE')
INSERT INTO FORMAS_PAGO(descripcion)VALUES('E_CHECK')
INSERT INTO FORMAS_PAGO(descripcion)VALUES('DEBIN')
INSERT INTO FORMAS_PAGO(descripcion)VALUES('TARJETA PREPAGA')

--–TABLA N°8
--CONDICIONES IVA

INSERT INTO CONDICIONES_IVA(cond_iva)VALUES('RESPONSABLE INSCRIPTO')
INSERT INTO CONDICIONES_IVA(cond_iva)VALUES('MONOTRIBUTISTA')
INSERT INTO CONDICIONES_IVA(cond_iva)VALUES('CONSUMIDOR FINAL')
INSERT INTO CONDICIONES_IVA(cond_iva)VALUES('AUTONOMO')
INSERT INTO CONDICIONES_IVA(cond_iva)VALUES('EXENTO')
INSERT INTO CONDICIONES_IVA(cond_iva)VALUES('NO ALCANZADO')

--–TABLA N°9
--–OBRAS SOCIALES

INSERT INTO OBRAS_SOCIALES( nom_obra_social, direccion, altura, id_barrio) 
				VALUES ( 'Apross', 'Av. Marcelo T de alvear', 1458, 1)
INSERT INTO OBRAS_SOCIALES( nom_obra_social, direccion, altura, id_barrio) 
				VALUES ( 'Ospil', 'San Jose de Calasanz', 578, 2)
INSERT INTO OBRAS_SOCIALES( nom_obra_social, direccion, altura, id_barrio) 
				VALUES ( 'Osecac', 'Bv Illia', 233, 1)
INSERT INTO OBRAS_SOCIALES( nom_obra_social, direccion, altura, id_barrio) 
				VALUES ( 'PAMI', 'Av. Córdoba', 5434, 34)
INSERT INTO OBRAS_SOCIALES( nom_obra_social, direccion, altura, id_barrio) 
				VALUES ( 'OSDE', 'Av. Corrientes', 1458, 34)
INSERT INTO OBRAS_SOCIALES( nom_obra_social, direccion, altura, id_barrio) 
				VALUES ( 'PROFE', 'Poeta Lugones', 789, 34)
INSERT INTO OBRAS_SOCIALES( nom_obra_social, direccion, altura, id_barrio) 
				VALUES ( 'Medifé', 'Av. del Trabajo', 1842, 34)
INSERT INTO OBRAS_SOCIALES( nom_obra_social, direccion, altura, id_barrio) 
				VALUES ( 'Swiss Medical', '9 de Julio', 1896, 34)





--–TABLA N°10
--PRODUCTOS 

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Clonacepam', 'alplax', 9292292, 300, '12-12-2023', 2)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Clonacepam', 'Rivotril', 333392, 350, '11-12-2024', 2)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Ibuprofeno', 'Ibupirac 600', 1212123, 350, '09-01-2024', 4)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Ibuprofeno', 'Ibupirac 400', 112392, 250, '09-10-2024', 4)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Diclofenac', 'Diclo Premium', 6712392, 650, '12-10-2024', 4)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Quimio 1200', 'Kim  Premium', 656562, 55750, '12-10-2023', 3)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Quimio 1201', 'SuopQuimium', 100222, 49750, '12-11-2023', 3)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Quimio 3200', 'SuopQuimium', 10012223, 79750, '12-12-2023', 3)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Simvastatina' , 'Simvastatina' , 1001292, 750, '12-12-2025', 2)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Aspirina'  , 'Aspirina  ', 1001211, 750,' 12-12-2025', 2)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Preservativos'  , 'Max  ', 1001211, 2750,' 12-12-2025',11)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Preservativos'  , 'Prime 12  ', 1001211, 2550,' 12-12-2025',11)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Mamadera'  , 'Mamadera  ', 151211, 5750,' 12-12-2025',8)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Para la acidez de estómago ' ,' Omeprazol' , 222211392, 1380, '16-01-2025',4)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Para reemplazar la tiroxina  ',' Lexotiroxina sódica',233211392, 720,' 16-02-2025', 2)


insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Para reemplazar la tiroxina'  , 'Ramipril'  , 4441392, 3220, '16-03-2025',2)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('true', 'Para la hipertensión y la angina ',' Amlodipina ',14441392, 3220,' 23-04-2025', 4)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'cuello ortopedico' , 'cuello ortopedico'   , 1392,8270,' 23-04-2023', 6)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'muletas' , 'muletas  ' , 1344342, 4970, ' 23-11-2022', 6)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'cabestrillo' , 'cabestrillo'   , 1344392,2970, ' 23-11-2022', 6)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'colirio',' irix  ' ,1994392, 270, '10-02-2023', 6)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'ciprofloxacina' ,' ciprofloxacina'   , 45344392, 670,' 12-2-2024', 5)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'manzanilla' , 'manzanilla '  , 344392, 123, '14-2-2024', 9)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'cola de caballo' , 'cola de caballo' , 114392, 556, '15-2-2024', 9)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'para ir de cuerpo' , 'cascara sagrada'   , 7711439, 156, '30-6-2026', 1)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false',' tranquilizante' , 'Tranky - pasiflora' , 70114392, 256, '30-7-2026',1)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Crema anti age' , 'Vichy-Saracatunga'   , 90002392, 8256, '30-1-2026', 7)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Crema humectante ',' Dermaglos magica '  ,65402392, 3256, '30-1-2024',7)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Crema hidratante' , 'LA Roche Posay -Hidro algo'  , 88872392, 3256, '3-10-2024', 7)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Factor Solar ',' Rayito de Sol 30 ' , 22872392,1256, '30-10-2024',7)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Pantalla solar', 'Dermaglos 50 crema' ,71111392, 5256, '30-12-2024', 7)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Quitaesmalte', 'Quitaesmalte Cutex magico ',74545392, 216, '31-12-2024', 8)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'mascarilla facial', 'mascarilla facial magica' ,2374545, 316,' 30-11-2023', 8)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'crema reductora',' Dunda super fit' ,12334492,1316, '23-12-2023', 7)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'espuma de limpieza facial',' espuma de limpieza facial Gaciar' ,999902492,446, '23-12-2024',10)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'desodorante',' Rexona Odorone' ,649902492, 246,' 23-8-2024',8)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'espuma de limpieza ', 'Chica limpia' ,9101010, 246, '17-9-2024', 10)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'espuma de limpieza' , 'Chico limpio ',91041024, 246, '17-9-2024', 10)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Shampoo ', 'Pantene ',33302492, 646, '18-9-2024',10)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Shampoo' , 'Capilatis ',32302492, 746, '18-9-2024', 10)

insert into Productos (vta_receta, descripcion, nombre_comercial, cod_barras, precio, vencimiento, id_tipo_producto)
values ('false', 'Jabon' ,' Rexona Jabon ',377724, 146, '18-7-2024', 10)


--–TABLA N°11
--SUCURSALES 

INSERT INTO sucursales ( nom_sucursal, direccion, altura, id_barrio) VALUES ( 'Sucursal Vacalardo', 'vacalardo', 3219, 3)
INSERT INTO sucursales ( nom_sucursal, direccion, altura, id_barrio) VALUES ( 'Sucursal Gral. Paz', 'Gral. Paz', 211, 5)
INSERT INTO sucursales ( nom_sucursal, direccion, altura, id_barrio) VALUES ( 'Sucursal Oncativo', 'Octavio Pinto', 4210, 1)
INSERT INTO sucursales ( nom_sucursal, direccion, altura, id_barrio) VALUES ( 'Sucursal Sunchales', 'Gral. Samora', 551, 2)
INSERT INTO sucursales ( nom_sucursal, direccion, altura, id_barrio) VALUES ( 'Sucursal Granja Grande', 'Cólón', 871, 9)
INSERT INTO sucursales ( nom_sucursal, direccion, altura, id_barrio) VALUES ( 'Sucursal Paisanita', 'Dean Funes', 336, 7)



----Tabla N°12 
--–PERSONAS


INSERT INTO PERSONAS (nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ('Lucrecia', 'Alvarez', 1, 39852698, '18/12/2000', 'lucre@mailto.com', '4938452', 'Rivera Indarte', 1825, 4)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Lautaro', 'Sosa', 1, 40587698, '18/12/2002', 'lauti@mailto.com', null, 'Colon', 4000, 6)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Pedro', 'Robles', 1, 36874857, '10/05/1993', 'pedro@mailto.com', '758964', 'Illia', 1234, 2)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Lorenzo', 'Acosta', 1, 40857485, '20/09/2000', 'loren@mailto.com', null, 'M.Bas', 320, 30)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Florencia', 'Perez', 2, 35874589, '07/12/1992', 'florperez@mailto.com', '748589', 'Gral Paz', 1825, 2)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Santiago', 'Britos', 2, 34758963, '11/01/1989', 'santib@mailto.com', '478542', 'Rivadeo', 2458, 15)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Irma', 'Lovato', 1, 09854789, '07/07/1935', 'irmalov@mailto.com', '478589', 'Obispo Castellano', 2587, 10)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Ramiro', 'Puchetta', 2, 39874859, '04/08/2000', 'ramipuch@mailto.com', null, 'Lisandro de la Torre', null, null)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Agustin', 'Morales', 2, 38745961, '05/11/2000', 'agusm@mailto.com', null, 'Campillo', 2345, 6)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Agustin', 'Robledo', 2, 40587965, '05/08/1997', 'agusrob@mailto.com', null, 'Jeronimo', 123, 16)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Federico', 'Alvarez', 1, 34258741, '18/02/1990', 'fede@mailto.com', null, 'san martin', 1825, 4)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Rodrigo', 'Sosa', 1, 352147896, '01/12/1990', 'rodrisosa@mailto.com', '478587', 'Colon', 4578, 6)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Fernando', 'Dagustino', 1, 36983777, '15/05/1993', 'ferchux@mailto.com', '777858', 'Illia', 4524, 2)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Lorenzo', 'Ramirez', 1, 40888485, '20/02/2000', 'lorenRAmi@mailto.com', null, 'M.Bas', 470, 20)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Franchesca', 'Perez', 2, 34785111, '07/12/1992', 'franchu@mailto.com', null, 'Gral Paz', 2000, 2)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Santiago', 'Pascualini', 2, 40857877, '11/01/2000', 'santilosada@mailto.com', null, 'Paraguay', 2458, 15)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Olga', 'Adragna', 1, 05854789, '07/10/1934', 'oadrag@mailto.com', '4557376', 'Lopez y Planes', 1748, 25)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Ramiro', 'Alvarez', 2, 39874444, '03/05/2000', 'langostininirama@mailto.com', null, 'Tomas de Archondo', null, null)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Agustin', 'Caceres', 2, 40588999, '14/01/2000', 'agusacanceres@mailto.com', null, 'allende', 888, 6)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Agustina', 'Estabanich', 2, 40000666, '15/08/1997', 'agusest@mailto.com', null, 'Jeronimo', 888, 16)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Bruno', 'Fuseneco', 1, 35000414, '16/02/1990', 'bruniz@mailto.com', null, 'san martin', 555, 4)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Carla', 'Gutierrez', 1, 35214000, '21/12/1990', 'carlix@mailto.com', '478587', 'Colon', 555, 6)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Estela', 'Herrera', 1, 36000874, '25/05/1993', 'estelix@mailto.com', '777858', 'Illia', 444, 2)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Adriana', 'Iacono', 1, 40000555, '20/02/2000', 'adrianiz@mailto.com', null, 'M.Bas', 444, 20)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Paulina', 'Jama', 2, 34000574, '17/12/1992', 'pailix@mailto.com', null, 'Gral Paz', 444, 2)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Roberto', 'Martinez', 2, 40111444, '31/01/2000', 'robertinho@mailto.com', null, 'Paraguay', 2545, 15)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Luis', 'Nicolasio', 1, 05888789, '27/10/1934', 'luigi@mailto.com', '4557376', 'Lopez y Planes', 2542, 25)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Daniel', 'Oviedo', 2, 39700700, '13/05/2000', 'danieloviedo@mailto.com', null, 'Belgrano', null, null)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Oscar', 'Sanchez', 2, 38008008, '04/01/2000', 'oscarsanchez@mailto.com', null, 'allende', 5474, 6)
INSERT INTO PERSONAS ( nombre, apellido, id_tipo_documento, numero_documento, fecha_nac, mail, telefono, Direccion, altura, id_barrio)
VALUES ( 'Gino', 'Sanchez', 2, 40002001, '04/01/2000', 'ginosanchez@mailto.com', null, 'allende', 7777, 6)


----TABLA N°13 
--–MEDICOS
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1414, 6, 2)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1415, 7, 6)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1420, 8, 11)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1145, 9, 4)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1114, 10,11)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1011, 11, 1)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1111, 12, 7)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1244, 13, 3)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1365, 14, 9)
INSERT INTO MEDICOS (matricula_medico, id_persona, id_especialidad) VALUES (1487, 15, 10)





--Tabla N°14 
--–RECETAS


insert into Recetas (descripcion, matricula_medico) values ('Clonacepam', 1011)  
insert into Recetas (descripcion, matricula_medico) values ('Quimio 1201',1114)  
insert into Recetas (descripcion, matricula_medico) values ('Quimio 1200', 1244)   
insert into Recetas (descripcion, matricula_medico) values ('Simvastatina', 1145)  
insert into Recetas (descripcion, matricula_medico) values ('colirio', 1111)       
insert into Recetas (descripcion, matricula_medico) values ('ciprofloxacina', 1111) 
insert into Recetas (descripcion, matricula_medico) values ('Clonacepam', 1011)     
insert into Recetas (descripcion, matricula_medico) values ('Quimio 3200', 1114)    
insert into Recetas (descripcion, matricula_medico) values ('ciprofloxacina', 1414) 
insert into Recetas (descripcion, matricula_medico) values ('Para reemplazar la tiroxina', 1415) 
insert into Recetas (descripcion, matricula_medico) values ('Para la hipertensión y la angina', 1415) 
insert into Recetas (descripcion, matricula_medico) values ('Para la acidez de estómago', 1487) 
insert into Recetas (descripcion, matricula_medico) values ('Para la hipertensión y la angina ', 1415) 
insert into Recetas (descripcion, matricula_medico) values ('Quimio 1201', 1114) 
insert into Recetas (descripcion, matricula_medico) values ('Quimio 1200', 1244) 
insert into Recetas (descripcion, matricula_medico) values ('colirio', 1111) 
insert into Recetas (descripcion, matricula_medico) values ('ciprofloxacina', 1111) 
insert into Recetas (descripcion, matricula_medico) values ('Quimio 3200', 1114) 
insert into Recetas (descripcion, matricula_medico) values ('Para la acidez de estómago', 1487) 
insert into Recetas (descripcion, matricula_medico) values ('Simvastatina', 1420) 
insert into Recetas (descripcion, matricula_medico) values ('Quimio 1200', 1244) 
insert into Recetas (descripcion, matricula_medico) values ('colirio', 1111)    
insert into Recetas (descripcion, matricula_medico) values ('Quimio 1201', 1114) 
insert into Recetas (descripcion, matricula_medico) values ('Para la hipertensión y la angina', 1415) 
insert into Recetas (descripcion, matricula_medico) values ('Quimio 3200', 1114) 
insert into Recetas (descripcion, matricula_medico) values ('ciprofloxacina', 1414) 
insert into Recetas (descripcion, matricula_medico) values ('colirio', 1111) 
insert into Recetas (descripcion, matricula_medico) values ('Para la acidez de estómago', 1487)
insert into Recetas (descripcion, matricula_medico) values ('Para la hipertensión y la angina', 1415)
insert into Recetas (descripcion, matricula_medico) values ('Clonacepam', 1011) 
insert into Recetas (descripcion, matricula_medico) values ('Quimio 3200', 1114)
insert into Recetas (descripcion, matricula_medico) values ('Quimio 1200', 1244)

--–TABLA N°15
--–VALIDACIONES_COBERTURA


insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 2, 5,  '08/09/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10230, 1, 3, '18/09/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 3, 1, '28/09/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 2, 5, '14/10/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10128, 4, 3, '20/10/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 3, 1, '26/10/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 2, 5, '20/11/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 5, 8, '24/11/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 3, 1, '26/11/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 14, 5, '10/12/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10208, 6, 7, '16/12/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 15, 1, '20/12/2019')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 14, 5, '16/01/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10160,7, 4, '20/01/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 15, 1, '28/01/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 14, 5, '16/02/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 8, 5, '22/02/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 15, 1, '28/02/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10158, 9, 6, '08/03/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 23, 5,'14/03/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10170, 10, 8, '18/03/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 8, 5, '20/03/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 21, 1, '28/03/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10180, 11, 6, '10/04/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 23, 5,'16/04/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 8, 5, '22/04/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 21, 1, '28/04/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10190, 12, 2, '02/05/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10198, 13, 7, '10/05/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10200, 23, 5,'16/05/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 18, 5, '22/05/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 21, 1, '28/05/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10236, 16, 4, '10/06/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10238, 17, 3, '12/07/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 18, 5, '22/08/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10320, 19, 7, '30/09/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10268, 20, 7, '06/10/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 18, 5, '22/10/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 8, 5, '22/10/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10340, 22, 7, '20/11/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10350, 24, 3, '16/12/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 25, 5, '22/12/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10350, 26, 3, '10/11/2020')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 25, 5, '22/01/2021')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10360, 27, 3, '10/02/2021')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 25, 5, '22/02/2021')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10370, 28, 8, '10/05/2021')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10380, 29, 8, '10/05/2021')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10364, 30, 3, '10/06/2022')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 31, 5, '22/06/2022')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 31, 5, '22/07/2022')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10210, 31, 5, '22/08/2022')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 32, 1, '28/08/2022')
insert into VALIDACIONES_COBERTURA (nro_afiliado, id_receta, cuit_obra_social, fecha_validacion)
values (10120, 32, 1, '28/09/2022')




--–TABLA N°16
----EMPLEADOS 

INSERT INTO EMPLEADOS (ID_PERSONA, OBSERVACION) VALUES (1, 'EMPLEADO DE MOSTRADOR SUCURSAL SUNCHALES')
INSERT INTO EMPLEADOS (ID_PERSONA, OBSERVACION) VALUES (2, 'EMPLEADO DE VACALARDO')
INSERT INTO EMPLEADOS (ID_PERSONA, OBSERVACION) VALUES (3, 'EMPLEADO DE DEPOSITO GRANJA GRANDE')
INSERT INTO EMPLEADOS (ID_PERSONA, OBSERVACION) VALUES (4, 'EMPLEADO DE MOSTRADOR GRAL. PAZ')
INSERT INTO EMPLEADOS (ID_PERSONA, OBSERVACION) VALUES (5, 'EMPLEADO DE LA PAISANITA')



--–TABLA N° 17
----CLIENTES 
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (6, 1, 3)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (8, 2, 3)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (13, 8, 3)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (17, 4, 2)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (11, 2, 3)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (7, 3, 3)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (8, 4, 1)

INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (5, 4, 3)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (9, 6, 3)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (3, 7, 3)
INSERT INTO CLIENTES (id_persona, cuit_Obra_social, id_condicion_iva)
values (1, 7, 4)


--–TABLA N°18
--–DESCUENTOS_VIGENTES
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (4975.00, 7, 5, 2, '08/09/2019')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (35.00, 3, 3, 5, '18/09/2019')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (5575.00, 6, 5, 2, '28/09/2019')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (75.00, 9, 3, 3, '20/10/2019')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (1651.20, 17, 1, 1, '08/03/2020')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (72.00, 15, 8, 5, '18/03/2020')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (322.00, 17, 7, 2, '10/05/2020')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (27.00, 16, 4, 3, '10/06/2020')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (325.60, 11, 3, 2, '08/03/2021')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (207.00, 14, 5, 2, '10/05/2021')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (1654.00, 16, 8, 1, '18/09/2021')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (994.00, 17, 5, 2, '20/11/2021')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (488.40, 1, 7, 6, '08/03/2022')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (15950.00, 7, 5, 2, '22/08/2022')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (75.00, 10, 4, 4, '04/09/2022')
INSERT INTO DESCUENTOS_OS_VIGENTES (descuento_obra_social, id_producto, cuit_obra_social, id_sucursal, fecha_descuento)
VALUES (8362.50, 6, 5, 5, '28/09/2022')



--–TABLA N°19
----EMPRESAS_LOGISTICA
INSERT INTO EMPRESAS_LOGISTICA (nom_empresa_logistica, id_barrio, id_condicion_iva, responsable_entrega, direccion, altura)
VALUES ('Ocasa', 2, 1, 'Mariano Larra', 'ob. monte', 234)

INSERT INTO EMPRESAS_LOGISTICA (nom_empresa_logistica, id_barrio, id_condicion_iva, responsable_entrega, direccion, altura)
VALUES ('Echegoyen', 5, 1, 'Colombres Ricardo', 'Sinsacate', 2544)

INSERT INTO EMPRESAS_LOGISTICA (nom_empresa_logistica, id_barrio, id_condicion_iva, responsable_entrega, direccion, altura)
VALUES ('Los Moyes', 8, 2, 'Marina Laguna', 'Portugueses', 556)

INSERT INTO EMPRESAS_LOGISTICA (nom_empresa_logistica, id_barrio, id_condicion_iva, responsable_entrega, direccion, altura)
VALUES ('Los Pacheco',9, 4, 'Pedrera Mauricio', 'Patata', 194)

INSERT INTO EMPRESAS_LOGISTICA (nom_empresa_logistica, id_barrio, id_condicion_iva, responsable_entrega, direccion, altura)
VALUES ('PacMan', 1, 1, 'Romina Suarez', 'Monte Hermoso', 934)

INSERT INTO EMPRESAS_LOGISTICA (nom_empresa_logistica, id_barrio, id_condicion_iva, responsable_entrega, direccion, altura)
VALUES ('RapiRap', 12, 3, 'Costas Emanuel', 'Felardino', 814)

--–TABLA N°20
--–ORDENES_DE_COMPRA
INSERT INTO ORDENES_DE_COMPRA VALUES ('Domicilio', '15/09/22', 1, 1, 1, 1)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Domicilio', '18/01/22', 2, 2, 2, 2)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '23/10/21', 3, 3, 3, 3)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Domicilio', '01/06/21', 1, 4, 1, 4)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '30/03/21', 6, 5, 3, 3)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '19/01/21', 1, 6, 1, 2)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '11/11/20', 2, 6, 2, 1)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '09/09/20', 3, 1, 2, 2)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Domicilio', '23/06/20', 7, 3, 2, 5)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Domicilio', '29/03/20', 1, 2, 5, 2)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '29/12/19', 9, 3, 1, 1)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Domicilio', '01/10/19', 2, 4, 2, 3)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Domicilio', '18/07/19', 4, 5, 2, 2)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '06/05/19', 5, 5, 2, 5)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '22/03/19', 2, 6, 2, 4)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '06/02/19', 2, 1, 4, 3)
INSERT INTO ORDENES_DE_COMPRA VALUES ('Retiro', '01/01/19', 2, 2, 2, 6)

--–TABLA N°21
--–FACTURAS
INSERT INTO FACTURAS VALUES ('17/01/19', 1, 1, 1, 1, 1, 'Primer cliente') --1
INSERT INTO FACTURAS VALUES ('17/01/19', 1, 1, 2, 2, 2, null)
INSERT INTO FACTURAS VALUES ('17/01/19', 2, 1, 3, 3, 3, null)
INSERT INTO FACTURAS VALUES ('17/01/19', 3, 1, 4, 4, 4, null)
INSERT INTO FACTURAS VALUES ('17/01/19', 1, 1, 5, 5, 5, null)
INSERT INTO FACTURAS VALUES ('19/03/19', 2, 2, 6, 5, 6, null)
INSERT INTO FACTURAS VALUES ('21/03/19', 5, 3, 7, 6, 7, null)
INSERT INTO FACTURAS VALUES ('23/04/19', 5, 4, 8, 6, 8, null)
INSERT INTO FACTURAS VALUES ('25/04/19', 2, 2, 9, 5, null, null) --
INSERT INTO FACTURAS VALUES ('28/04/19', 4, 3, 10, 4, 2, 'Faltó entregar segunda caja')
INSERT INTO FACTURAS VALUES ('03/04/19', 1, 1, 11, 3, 3, null)
INSERT INTO FACTURAS VALUES ('05/05/19', 2, 5, 1, 2, 4, null)
INSERT INTO FACTURAS VALUES ('10/06/19', 3, 3, 2, 1, 5, null)
INSERT INTO FACTURAS VALUES ('13/07/19', 4, 6, 2, 2, null, null)
INSERT INTO FACTURAS VALUES ('14/08/19', 5, 7, 2, 3, 7, null)
INSERT INTO FACTURAS VALUES ('17/09/19', 5, 8, 2, 4, 8, null)
INSERT INTO FACTURAS VALUES ('26/10/19', 4, 9, 3, 5, 6, null)
INSERT INTO FACTURAS VALUES ('31/10/19', 3, 2, 3, 6, 4, null)
INSERT INTO FACTURAS VALUES ('02/12/19', 2, 3, 4, 1, 2, null)
INSERT INTO FACTURAS VALUES ('02/01/20', 1, 1, 5, 2, 3, null)
INSERT INTO FACTURAS VALUES ('02/01/20', 1, 4, 6, 3, 5, 'Retira mañana')
INSERT INTO FACTURAS VALUES ('05/03/20', 5, 3, 7, 4, 7, null)
INSERT INTO FACTURAS VALUES ('14/01/20', 3, 4, 8, 5, 1, null)
INSERT INTO FACTURAS VALUES ('14/01/20', 2, 2, 9, 6, 8, null)
INSERT INTO FACTURAS VALUES ('15/02/20', 4, 1, 11, 6, 2, null)
INSERT INTO FACTURAS VALUES ('15/03/20', 4, 1, 10, 6, null, null)
INSERT INTO FACTURAS VALUES ('18/04/20', 2, 1, 3, 4, 3, null)
INSERT INTO FACTURAS VALUES ('31/05/20', 1, 5, 2, 3, 6, null)
INSERT INTO FACTURAS VALUES ('01/06/20', 3, 1, 4, 2, 4, null)  --29
INSERT INTO FACTURAS VALUES ('06/07/20', 5, 2, 5, 1, null, null)
INSERT INTO FACTURAS VALUES ('23/08/20', 3, 2, 6, 1, 2, null)
INSERT INTO FACTURAS VALUES ('23/09/20', 1, 6, 7, 1, null, null)
INSERT INTO FACTURAS VALUES ('24/10/20', 5, 3, 8, 2, 6, null)
INSERT INTO FACTURAS VALUES ('25/11/20', 3, 3, 8, 2, null, null)
INSERT INTO FACTURAS VALUES ('27/12/20', 2, 3, 8, 3, 7, null)
INSERT INTO FACTURAS VALUES ('03/01/21', 4, 7, 8, 3, null, null)    --36
INSERT INTO FACTURAS VALUES ('07/01/21', 2, 3, 9, 4, 3, null)
INSERT INTO FACTURAS VALUES ('07/01/21', 4, 1, 9, 5, null, null)
INSERT INTO FACTURAS VALUES ('08/02/21', 1, 1, 10, 6, 8, 'Retira mañana')
INSERT INTO FACTURAS VALUES ('08/02/21', 3, 8, 11, 1, null, null)
INSERT INTO FACTURAS VALUES ('08/02/21', 3, 9, 3, 2, null, null)
INSERT INTO FACTURAS VALUES ('09/02/21', 2, 3, 4, 3, null, null)
INSERT INTO FACTURAS VALUES ('11/03/21', 5, 2, 5, 3, 6, null)
INSERT INTO FACTURAS VALUES ('13/04/21', 4, 4, 6, 3, null, null)    --44
INSERT INTO FACTURAS VALUES ('25/05/21', 3, 2, 7, 4, 5, null)
INSERT INTO FACTURAS VALUES ('24/05/21', 5, 5, 8, 4, null, null)
INSERT INTO FACTURAS VALUES ('12/06/21', 4, 6, 9, 5, null, null)
INSERT INTO FACTURAS VALUES ('15/06/21', 3, 1, 10, 5, 1, 'Chequear con obra social')
INSERT INTO FACTURAS VALUES ('18/07/21', 2, 1, 11, 5, null, null)
INSERT INTO FACTURAS VALUES ('19/08/21', 1, 1, 1, 6, null, null)    --50
INSERT INTO FACTURAS VALUES ('30/09/21', 1, 1, 1, 6, 3, null)
INSERT INTO FACTURAS VALUES ('26/10/21', 2, 1, 2, 4, null, null)
INSERT INTO FACTURAS VALUES ('11/11/21', 3, 8, 3, 2, null, null)
INSERT INTO FACTURAS VALUES ('13/11/21', 4, 3, 4, 1, null, null)
INSERT INTO FACTURAS VALUES ('19/12/21', 5, 3, 5, 3, null, null)
INSERT INTO FACTURAS VALUES ('25/01/22', 5, 7, 6, 5, null, null)
INSERT INTO FACTURAS VALUES ('27/02/22', 3, 3, 7, 4, null, 'Retira mañana')
INSERT INTO FACTURAS VALUES ('08/03/22', 1, 1, 8, 2, 7, null)
INSERT INTO FACTURAS VALUES ('14/04/22', 2, 5, 9, 1, 3, null)
INSERT INTO FACTURAS VALUES ('17/05/22', 4, 2, 9, 3, 2, null)  --60
INSERT INTO FACTURAS VALUES ('19/06/22', 4, 3, 10, 5, null, null)
INSERT INTO FACTURAS VALUES ('24/07/22', 2, 3, 11, 1, null, null)
INSERT INTO FACTURAS VALUES ('23/08/22', 3, 2, 1, 2, null, null)
INSERT INTO FACTURAS VALUES ('21/09/22', 1, 9, 2, 3, 6, 'Llamar por teléfono')--64

--–TABLA N°22
--–DETALLES_OC
INSERT INTO DETALLE_OC VALUES (1, 2, 50, 569.25)
INSERT INTO DETALLE_OC VALUES (1, 3, 50, 263.78)
INSERT INTO DETALLE_OC VALUES (2, 1, 150, 1345)
INSERT INTO DETALLE_OC VALUES (2, 4, 115, 112)
INSERT INTO DETALLE_OC VALUES (2, 5, 60, 314.20)
INSERT INTO DETALLE_OC VALUES (2, 1, 40, 987.78)
INSERT INTO DETALLE_OC VALUES (3, 1, 10, 1111.54)
INSERT INTO DETALLE_OC VALUES (3, 3, 45, 250.96)
INSERT INTO DETALLE_OC VALUES (3, 6, 50, 530.25)
INSERT INTO DETALLE_OC VALUES (4, 5, 25, 280.27)
INSERT INTO DETALLE_OC VALUES (4, 3, 125, 245.63)
INSERT INTO DETALLE_OC VALUES (4, 4, 95, 108.95)
INSERT INTO DETALLE_OC VALUES (4, 8, 60, 496.13)
INSERT INTO DETALLE_OC VALUES (5, 1, 12, 941.15)
INSERT INTO DETALLE_OC VALUES (5, 2, 80, 469.65)
INSERT INTO DETALLE_OC VALUES (6, 9, 60, 236.11)
INSERT INTO DETALLE_OC VALUES (6, 1, 10, 940.12)
INSERT INTO DETALLE_OC VALUES (7, 5, 40, 278)
INSERT INTO DETALLE_OC VALUES (7, 7, 80, 465.89)
INSERT INTO DETALLE_OC VALUES (7, 4, 90, 107.62)
INSERT INTO DETALLE_OC VALUES (7, 3, 50, 235.84)
INSERT INTO DETALLE_OC VALUES (8, 3, 10, 235.84)
INSERT INTO DETALLE_OC VALUES (8, 12, 75, 266)
INSERT INTO DETALLE_OC VALUES (9, 1, 75, 888.64)
INSERT INTO DETALLE_OC VALUES (10, 11, 30, 452.82)
INSERT INTO DETALLE_OC VALUES (11, 4, 20, 105.33)
INSERT INTO DETALLE_OC VALUES (11, 15, 15, 351.99)
INSERT INTO DETALLE_OC VALUES (12, 3, 20, 229.41)
INSERT INTO DETALLE_OC VALUES (13, 5, 120, 257.92)
INSERT INTO DETALLE_OC VALUES (14, 1, 95, 866.26)
INSERT INTO DETALLE_OC VALUES (14, 13, 110, 347.99)
INSERT INTO DETALLE_OC VALUES (15, 4, 80, 102.59)
INSERT INTO DETALLE_OC VALUES (16, 17, 40, 251.51)
INSERT INTO DETALLE_OC VALUES (17, 12, 30, 218.54)

--–TABLA N°23
--–DETALLES_FACTURA
INSERT INTO DETALLES_FACTURA VALUES (1,1,1,152.03,1,1,10)
INSERT INTO DETALLES_FACTURA VALUES (1,41,1,451.03,1,1,10)
INSERT INTO DETALLES_FACTURA VALUES (2,2,1,231,2,2, null)
INSERT INTO DETALLES_FACTURA VALUES (2,22,1,325.02,2,2, null)
INSERT INTO DETALLES_FACTURA VALUES (3,3,2,1150.12,3,3,15)
INSERT INTO DETALLES_FACTURA VALUES (3,33,1,760.51,3,3,15)
INSERT INTO DETALLES_FACTURA VALUES (4,4,1,99.14,4,4, null)
INSERT INTO DETALLES_FACTURA VALUES (4,24,1,201,4,4, null)
INSERT INTO DETALLES_FACTURA VALUES (5,5,1,88.25,5,5, null)
INSERT INTO DETALLES_FACTURA VALUES (5,25,1,144.25,5,5, null)
INSERT INTO DETALLES_FACTURA VALUES (6,6,1,178,6,6, null)
INSERT INTO DETALLES_FACTURA VALUES (7,7,1,196.47,7,7,10)
INSERT INTO DETALLES_FACTURA VALUES (8,8,2,421.61,8,8, null)
INSERT INTO DETALLES_FACTURA VALUES (9,9,1,248.70,9, null, null)
INSERT INTO DETALLES_FACTURA VALUES (10,10,1,369.99,10,10,20)
INSERT INTO DETALLES_FACTURA VALUES (11,11,1,487,11,11,20)
INSERT INTO DETALLES_FACTURA VALUES (12,12,2,154.25,11,12,20)
INSERT INTO DETALLES_FACTURA VALUES (13,13,1,89.10,12,13,20)
INSERT INTO DETALLES_FACTURA VALUES (14,14,1,111.11,12, null, null) --
INSERT INTO DETALLES_FACTURA VALUES (15,15,3,154.23,13,15, null)
INSERT INTO DETALLES_FACTURA VALUES (16,16,1,152.03,14,1,10)
INSERT INTO DETALLES_FACTURA VALUES (16,36,1,872.03,14,1,10)
INSERT INTO DETALLES_FACTURA VALUES (17,17,3,162,14,2, null)
INSERT INTO DETALLES_FACTURA VALUES (18,1,1,152.78,15,3,10)
INSERT INTO DETALLES_FACTURA VALUES (18,31,1,230.68,15,3,10)
INSERT INTO DETALLES_FACTURA VALUES (19,1,1,589,16,4,10)
INSERT INTO DETALLES_FACTURA VALUES (20,2,1,355.23,17,5, null)
INSERT INTO DETALLES_FACTURA VALUES (20,32,1,663.27,17,5, null)
INSERT INTO DETALLES_FACTURA VALUES (21,1,1,462.11,18,6,10)
INSERT INTO DETALLES_FACTURA VALUES (22,2,1,132.23,19,6, null)
INSERT INTO DETALLES_FACTURA VALUES (23,3,1,696.88,20,7,15)
INSERT INTO DETALLES_FACTURA VALUES (23,23,1,514.62,20,7,15)
INSERT INTO DETALLES_FACTURA VALUES (24,4,1,144.33,21,7, null)
INSERT INTO DETALLES_FACTURA VALUES (25,5,5,297.36,21,8,10)
INSERT INTO DETALLES_FACTURA VALUES (25,15,5,137.22,21,8,10)
INSERT INTO DETALLES_FACTURA VALUES (26,5,1,300,22,8, null)
INSERT INTO DETALLES_FACTURA VALUES (27,6,1,420.51,23,9,10)
INSERT INTO DETALLES_FACTURA VALUES (28,7,1,363.63,24,10, null)
INSERT INTO DETALLES_FACTURA VALUES (28,27,1,652.63,24,10, null)
INSERT INTO DETALLES_FACTURA VALUES (29,8,1,215.12,25,1, null)
INSERT INTO DETALLES_FACTURA VALUES (30,9,2,316.20,26, null, null)
INSERT INTO DETALLES_FACTURA VALUES (30,29,2,198.26,26, null, null)
INSERT INTO DETALLES_FACTURA VALUES (31,10,1,148.21,27,13,10)
INSERT INTO DETALLES_FACTURA VALUES (32,2,3,153,28, null, null) --
INSERT INTO DETALLES_FACTURA VALUES (33,12,1,213.11,29,14, null)
INSERT INTO DETALLES_FACTURA VALUES (33,32,1,326.13,29,14, null)
INSERT INTO DETALLES_FACTURA VALUES (34,13,1,145.63,30, null, null)
INSERT INTO DETALLES_FACTURA VALUES (35,14,1,321.89,31,15, null)
INSERT INTO DETALLES_FACTURA VALUES (36,5,1,258.60,32, null, null)
INSERT INTO DETALLES_FACTURA VALUES (36,25,1,754.60,32, null, null)
INSERT INTO DETALLES_FACTURA VALUES (37,15,2,365,32,16, null)
INSERT INTO DETALLES_FACTURA VALUES (38,16,1,749.44,33, null, null)
INSERT INTO DETALLES_FACTURA VALUES (38,36,1,251.27,33, null, null)
INSERT INTO DETALLES_FACTURA VALUES (39,17,1,163.20,34,8, null)
INSERT INTO DETALLES_FACTURA VALUES (40,17,1,186.30,35, null, null)
INSERT INTO DETALLES_FACTURA VALUES (41,17,1,176.33,36, null, null)
INSERT INTO DETALLES_FACTURA VALUES (41,27,1,179.25,36, null, null)
INSERT INTO DETALLES_FACTURA VALUES (42,17,1,236.22,37, null, null)
INSERT INTO DETALLES_FACTURA VALUES (43,8,2,298.32,38,2, null)
INSERT INTO DETALLES_FACTURA VALUES (44,9,1,52,39, null, null) ---
INSERT INTO DETALLES_FACTURA VALUES (45,10,1,88.48,40,3, null)
INSERT INTO DETALLES_FACTURA VALUES (45,20,1,888.48,40,3, null)
INSERT INTO DETALLES_FACTURA VALUES (46,12,1,96.54,41, null, null)
INSERT INTO DETALLES_FACTURA VALUES (47,1,1,103.56,42, null, null)
INSERT INTO DETALLES_FACTURA VALUES (48,12,2,258.58,43,14, null)
INSERT INTO DETALLES_FACTURA VALUES (49,13,3,456.21,44, null, null)
INSERT INTO DETALLES_FACTURA VALUES (49,33,3,617.21,44, null, null)
INSERT INTO DETALLES_FACTURA VALUES (50,14,1,62,45, null, null)
INSERT INTO DETALLES_FACTURA VALUES (50,5,1,83.11,46,10, null)
INSERT INTO DETALLES_FACTURA VALUES (53,6,1,96.06,47, null, null)
INSERT INTO DETALLES_FACTURA VALUES (53,7,1,87,48, null, null)
INSERT INTO DETALLES_FACTURA VALUES (54,2,1,803,49, null, null)
INSERT INTO DETALLES_FACTURA VALUES (55,3,1,105,50, null, null)
INSERT INTO DETALLES_FACTURA VALUES (55,23,1,462.30,50, null, null)
INSERT INTO DETALLES_FACTURA VALUES (56,4,2,118.18,51, null, null)   --
INSERT INTO DETALLES_FACTURA VALUES (57,9,1,1125.21,52, null, null)
INSERT INTO DETALLES_FACTURA VALUES (57,34,1,657.21,52, null, null)
INSERT INTO DETALLES_FACTURA VALUES (58,1,1,136.86,53,3, null)
INSERT INTO DETALLES_FACTURA VALUES (58,35,1,413.86,53,3, null)
INSERT INTO DETALLES_FACTURA VALUES (59,4,1,146.91,54,4, null)
INSERT INTO DETALLES_FACTURA VALUES (59,36,1,698.91,54,4, null)
INSERT INTO DETALLES_FACTURA VALUES (60,7,1,159.15,53,5, null)
INSERT INTO DETALLES_FACTURA VALUES (60,37,1,896.15,53,5, null)
INSERT INTO DETALLES_FACTURA VALUES (61,38,1,603.22,52, null, null)
INSERT INTO DETALLES_FACTURA VALUES (61,8,1,174.22,52, null, null)
INSERT INTO DETALLES_FACTURA VALUES (61,39,1,222.22,52, null, null)
INSERT INTO DETALLES_FACTURA VALUES (62,12,1,188.65,51, null, null)
INSERT INTO DETALLES_FACTURA VALUES (62,40,1,357.65,51, null, null)
INSERT INTO DETALLES_FACTURA VALUES (63,13,2,801.23,50, null, null)
INSERT INTO DETALLES_FACTURA VALUES (63,29,2,546.23,50, null, null)
INSERT INTO DETALLES_FACTURA VALUES (64,14,2,202.23,49,9, null)
INSERT INTO DETALLES_FACTURA VALUES (64,34,2,581.23,49,9, null)
INSERT INTO DETALLES_FACTURA VALUES (31,16,1,213.23,48,13, null)
INSERT INTO DETALLES_FACTURA VALUES (35,6,1,217.15,47,15, null)
INSERT INTO DETALLES_FACTURA VALUES (41,5,1,237.12,46,10, null)
INSERT INTO DETALLES_FACTURA VALUES (47,1,1,78.78,45,null,15)       ---
INSERT INTO DETALLES_FACTURA VALUES (48,2,1,258.21,44,14, null)
INSERT INTO DETALLES_FACTURA VALUES (59,3,1,269.65,43,4, null)
INSERT INTO DETALLES_FACTURA VALUES (12,4,1,979.54,42,12, null)
INSERT INTO DETALLES_FACTURA VALUES (13,5,2,281.54,41,null,20)
INSERT INTO DETALLES_FACTURA VALUES (50,6,1,301.30,40, null, null)
INSERT INTO DETALLES_FACTURA VALUES (60,7,1,315.62,39,5, null)
INSERT INTO DETALLES_FACTURA VALUES (14,8,2,399,38,7,15)
INSERT INTO DETALLES_FACTURA VALUES (13,9,3,141.51,37, null, null)
INSERT INTO DETALLES_FACTURA VALUES (19,10,1,151.23,36,4, null)
INSERT INTO DETALLES_FACTURA VALUES (20,2,1,793,35,5, null)
INSERT INTO DETALLES_FACTURA VALUES (21,13,1,172.99,34, null, null)
INSERT INTO DETALLES_FACTURA VALUES (23,14,1,188.56,33,8,10)        ---
INSERT INTO DETALLES_FACTURA VALUES (53,15,1,951.20,32, null, null)
INSERT INTO DETALLES_FACTURA VALUES (7,16,1,159.01,31,1,20)


--–TABLA N°24 
--–REEMBOLSOS_OS
INSERT INTO reembolsos_os VALUES (1,1)
INSERT INTO reembolsos_os VALUES (2,1)
INSERT INTO reembolsos_os VALUES (3,1)
INSERT INTO reembolsos_os VALUES (4,1)
INSERT INTO reembolsos_os VALUES (5,1)
INSERT INTO reembolsos_os VALUES (6,1)
INSERT INTO reembolsos_os VALUES (7,1)
INSERT INTO reembolsos_os VALUES (8,1)
INSERT INTO reembolsos_os VALUES (10,1)
INSERT INTO reembolsos_os VALUES (11,1)
INSERT INTO reembolsos_os VALUES (12,0)
INSERT INTO reembolsos_os VALUES (13,1)
INSERT INTO reembolsos_os VALUES (15,1)
INSERT INTO reembolsos_os VALUES (16,1)
INSERT INTO reembolsos_os VALUES (17,1)
INSERT INTO reembolsos_os VALUES (18,1)
INSERT INTO reembolsos_os VALUES (19,1)
INSERT INTO reembolsos_os VALUES (20,1)
INSERT INTO reembolsos_os VALUES (21,1)
INSERT INTO reembolsos_os VALUES (22,0)
INSERT INTO reembolsos_os VALUES (23,1)
INSERT INTO reembolsos_os VALUES (24,1)
INSERT INTO reembolsos_os VALUES (25,1)
INSERT INTO reembolsos_os VALUES (26,1)
INSERT INTO reembolsos_os VALUES (27,1)
INSERT INTO reembolsos_os VALUES (28,1)
INSERT INTO reembolsos_os VALUES (29,1)
INSERT INTO reembolsos_os VALUES (30,1)
INSERT INTO reembolsos_os VALUES (31,0)
INSERT INTO reembolsos_os VALUES (33,1)
INSERT INTO reembolsos_os VALUES (35,1)
INSERT INTO reembolsos_os VALUES (37,1)
INSERT INTO reembolsos_os VALUES (39,1)
INSERT INTO reembolsos_os VALUES (43,1)
INSERT INTO reembolsos_os VALUES (45,1)
INSERT INTO reembolsos_os VALUES (48,1)
INSERT INTO reembolsos_os VALUES (51,1)
INSERT INTO reembolsos_os VALUES (58,0)
INSERT INTO reembolsos_os VALUES (59,1)
INSERT INTO reembolsos_os VALUES (60,1)
INSERT INTO reembolsos_os VALUES (64,1)
INSERT INTO reembolsos_os VALUES (65,1)
INSERT INTO reembolsos_os VALUES (66,1)
INSERT INTO reembolsos_os VALUES (67,0)
INSERT INTO reembolsos_os VALUES (69,1)
INSERT INTO reembolsos_os VALUES (70,1)
INSERT INTO reembolsos_os VALUES (71,0)
INSERT INTO reembolsos_os VALUES (74,1)
INSERT INTO reembolsos_os VALUES (75,0)
INSERT INTO reembolsos_os VALUES (77,0)
INSERT INTO reembolsos_os VALUES (78,0)
INSERT INTO reembolsos_os VALUES (80,0)
INSERT INTO reembolsos_os VALUES (82,0)

--–TABLA N°25
--–STOCKS
select * from STOCKS order by 5
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 1, 15,2, 10, 3000, 12502, '12-12-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 2, 15,2, 10, 3000, 13003, '12-11-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 3, 15,2, 10, 3000, 14004, '01-09-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (100, 4, 15,2, 10, 3000, 14506, '10-12-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 5, 15,2, 10, 3000, 14004, '01-09-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (10, 6, 6,2, 10, 3000, 17008, '10-12-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (10, 7, 5,3, 10, 3000, 19001, '11-12-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (10, 8, 5,3, 10, 3000, 19503, '12-12-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (60, 9, 16,3, 10, 3000, 20102, '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (100, 10, 17,3, 10, 3000, 20204 , '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (40, 11, 17,3, 10, 3000, 20304, '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (50, 12, 17,3, 10, 3000, 20406, '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (20, 13, 17,4, 10, 3000, 20504, '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (40, 14, 15,4, 10, 3000, 20604, '16-01-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (25, 15, 16,4, 10, 3000, 20554, '16-02-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (50, 16, 16,4, 10, 3000, 20662, '16-03-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (60, 17, 16,4, 10, 3000, 20704, '23-04-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (30, 18, 10,4, 10, 3000, 20784, '23-04-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (20, 19, 10,4, 10, 3000, 20804, '23-04-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (25, 20, 15,4, 10, 3000, 20844, '23-04-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (50, 21, 16,4, 10, 3000, 20906, '30-2-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (60, 22, 16,5, 10, 3000, 20946, '26-2-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (50, 23, 14,5, 10, 3000, 20944,  '26-2-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (50, 24, 14,5, 10, 3000, 20986, '26-2-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 25, 15,5, 10, 3000, 21404, '30-6-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 26, 15, 5,10, 3000, 21504, '30-7-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (60, 27, 14,5, 10, 3000, 21604, '30-1-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (70, 28, 15,5, 10, 3000, 21704, '30-1-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (70, 29, 15,5, 10, 3000, 21804,  '3-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (60, 30, 16,5, 10, 3000, 21904, '30-10-2024')

INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (300, 31, 17,5, 10, 3000, 22004, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (150, 32, 17,5, 10, 3000, 22104, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (5, 33, 17, 5,10, 3000, 22204, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (10, 34, 17, 5,10, 3000, 22304, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (74, 35, 17,5, 10, 3000, 22404, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (200, 36, 17,2, 10, 3000, 22504, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (455, 37, 17, 2,10, 3000, 22604, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (600, 38, 17,2, 10, 3000, 22704, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (7, 39, 17,2, 10, 3000, 22804, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (10, 40, 17,2, 10, 3000, 22904, '30-10-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (2500, 41, 17,2, 10, 3000, 23004, '30-10-2024')
--nuevos inserts

INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (10, 6, 6,1, 10, 3000, 17009, '10-12-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (400, 25, 17,1, 10, 3000, 23008, '30-06-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (400, 26, 17,1, 10, 3000, 23006, '30-07-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 1, 17,1, 10, 3000, 12506, '12-12-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (100, 9, 17,1, 10, 3000, 20282, '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (200, 10, 17,1, 10, 3000, 20243 , '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (100, 1, 17,5, 10, 3000, 12598, '12-12-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 9, 17,5, 10, 3000, 20294, '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (100, 10, 17,5, 10, 3000, 20250 , '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (100, 10, 17,3, 10, 3000, 20204 , '12-12-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (350, 25, 17,2, 10, 3000, 23004, '30-06-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (350, 26, 17,2, 10, 3000, 23008, '30-07-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (380, 25, 17,3, 10, 3000, 23075, '30-06-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (400, 26, 17,3, 10, 3000, 23048, '30-07-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (300, 25, 17,4, 10, 3000, 23086, '30-06-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 26, 17,4, 10, 3000, 23096, '30-07-2026')


INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (100, 4, 17,1, 10, 3000, 14508, '10-12-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (60, 22, 17,1, 10, 3000, 20944, '26-2-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (30, 18, 17,1, 10, 3000, 20788, '23-04-2025')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (300, 25, 17,6, 10, 3000, 23003, '30-06-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (300, 26, 17,6, 10, 3000, 23006, '30-07-2026')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (80, 1, 17, 6, 10, 3000, 12507, '12-12-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (10, 6, 17, 6, 10, 3000, 17004, '10-12-2023')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (100, 4, 17,6, 10, 3000, 14503, '10-12-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (60, 22, 17,6, 10, 3000, 20948, '26-2-2024')
INSERT INTO STOCKS (cantidad, id_producto, id_orden_compra,id_sucursal, stock_minimo, stock_maximo, lote, vencimiento)
VALUES (30, 18, 17,6, 10, 3000, 20785, '23-04-2025')




alter table empleados 
add id_sucursal int

alter table empleados 
add constraint fk_id_sucursal_empleado foreign key (id_sucursal) references SUCURSALES (id_sucursal)

update empleados set id_sucursal=4 where id_empleado=1
update empleados set id_sucursal=1 where id_empleado=2
update empleados set id_sucursal=5 where id_empleado=3
update empleados set id_sucursal=2 where id_empleado=4
update empleados set id_sucursal=5 where id_empleado=5

insert into personas VALUES('Paola', 'Alvarez', 2, 39005001,'2000-01-04','paoalvarez@mailto.com',null, 'allende', 77,3)
insert into empleados VALUES(31,'EMPLEADO DE MOSTRADOR SUCURSAL SUNCHALES',4)
insert into personas VALUES('Franco', 'Gambeti', 2, 39005801,'2002-01-04','gambetipablo@mailto.com',null, 'sol de luna', 177,2)
insert into empleados VALUES(32,'EMPLEADO DE MOSTRADOR SUCURSAL GRANJA GRANDE',5)
insert into personas VALUES('Estefania', 'Pizarro', 2, 40805001,'2002-01-04','teffi@mailto.com',null, 'campillo', 77,4)
insert into empleados VALUES(33,'EMPLEADO DE MOSTRADOR SUCURSAL GRAL PAZ',2)
insert into personas VALUES('Antonio', 'Ferrero', 2, 30275001,'1982-01-04','ferreroant@mailto.com',null, 'allende', 77,3)
insert into empleados VALUES(34,'EMPLEADO DE MOSTRADOR SUCURSAL ONCATIVO',2)
insert into personas VALUES('Gissel', 'Graciani', 2, 40875001,'1997-01-04','gisegraciani@mailto.com',null, 'Bedoya', 872,2)
insert into empleados VALUES(35,'EMPLEADO DE MOSTRADOR SUCURSAL ONCATIVO',3)
insert into personas VALUES('Gustavo', 'DiTrotta', 2, 18875001,'1966-01-04','ditrottagustavo@mailto.com',null, 'Machado', 1875,2)
insert into empleados VALUES(36,'EMPLEADO DE MOSTRADOR SUCURSAL PAISANITA',6)
insert into personas VALUES('Roman', 'Olave', 2, 26875001,'1985-01-04','olaveroman@mailto.com',null, 'pakistan', 872,2)
insert into empleados VALUES(37,'EMPLEADO DE MOSTRADOR SUCURSAL PAISANITA',6)


insert into logins VALUES('Lucrecia Alvarez','lucrecia')
insert into logins VALUES('Lautaro Sosa','lautaro')
insert into logins VALUES('Pedro Robles','pedro')
insert into logins VALUES('Lorenzo Acosta','lorenzo')
insert into logins VALUES('Florencia Perez','florencia')
insert into logins VALUES('Paola Alvarez','paola')
insert into logins VALUES('Franco Gambeti','franco')
insert into logins VALUES('Estefania Pizarro','estefania')
insert into logins VALUES('Antonio Ferrero','antonio')
insert into logins VALUES('Gissel Graciani','gissel')
insert into logins VALUES('Gustavo DiTrotta','gustavo')
insert into logins VALUES('Roman Olave','roman')

insert into LoginGerentes Values('Gerente','1234')

update productos set baja=0

update DETALLES_FACTURA set descuento_sucursal=0
where descuento_sucursal is null

update DETALLES_FACTURA
set descuento_sucursal =0 --para sacar los null de los descuentos
where descuento_sucursal is null


go
Create PROC SP_MOSTRAR_FACTURAS 
AS
BEGIN
SELECT id_factura,fecha_factura,P1.nombre'nombre_empleado',P1.apellido'apellido_empleado',FP.descripcion,P.nombre'nombre_cliente',P.apellido'apellido_cliente',S.nom_sucursaL
FROM FACTURAS F 
JOIN EMPLEADOS E ON E.id_empleado=F.id_empleado 
JOIN CLIENTES C ON C.id_cliente=F.id_cliente
JOIN FORMAS_PAGO FP ON FP.id_forma_pago=F.id_forma_pago
JOIN SUCURSALES S ON S.Id_SucursaL=F.id_sucursal
JOIN PERSONAS P ON P.id_persona=C.id_persona
JOIN PERSONAS P1 ON P1.id_persona=E.id_persona
END

go
CREATE PROC SP_MOSTRAR_DETALLES_PRODUCTOS
@ID_FACTURA INT 
AS
BEGIN
SELECT P.nombre_comercial 'producto', P.precio 'precio', DF.cantidad 'cantidad',
DF.descuento_sucursal 'descuento'
FROM PRODUCTOS P
JOIN DETALLES_FACTURA DF ON DF.id_producto=P.id_producto
JOIN FACTURAS F ON F.id_factura=DF.id_factura
WHERE F.id_factura=@ID_FACTURA
END


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_EMPLEADOS]
as
begin 
select id_empleado , nombre, apellido, observacion, id_sucursal
from EMPLEADOS e join personas p on p.id_persona=e.id_persona
end


/****** Object:  StoredProcedure [dbo].[Consulta6]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Consulta6]
as
begin
Select count(f.id_factura) cantidad, p.apellido+', '+p.nombre Nombre, sum(df.precio_venta*cantidad) Total,
p.telefono Teléfono, p.mail Email, 'Cliente' Tipo
from clientes c join facturas f on f.id_cliente=c.id_cliente
join DETALLES_FACTURA df on df.id_factura=f.id_factura
join personas p on c.id_persona=p.id_persona
where DATEDIFF(month, fecha_factura,getdate())<=12
group by p.apellido+', '+p.nombre, p.telefono, p.mail
union
select count(f.id_factura), p.apellido+', '+p.nombre Nombre, sum(df.precio_venta*cantidad),
p.telefono, p.mail, 'Vendedor'
from EMPLEADOS e join facturas f on f.id_empleado=e.id_empleado
join DETALLES_FACTURA df on df.id_factura=f.id_factura
join personas p on e.id_persona=p.id_persona
where DATEDIFF(month, fecha_factura,getdate())<=12
group by p.apellido+', '+p.nombre, p.telefono, p.mail
order by 6 desc, 5 desc
end
GO
/****** Object:  StoredProcedure [dbo].[Consulta7]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Consulta7]
@trim int
as
	if @trim = 1 --enero-marzo
		 Select top 1 os.nom_obra_social 'Obra_social', 
		 s.nom_sucursal Sucursal, 
		 sum(df.cantidad) 'Cantidad_Vendida',
		pr.id_tipo_producto 'Tipo_producto', 
		pr.nombre_comercial 'Nombre_Comercial_del_Producto'
		from
		DETALLES_FACTURA df join
		FACTURAS f on f.id_factura=df.id_factura
		join Clientes c on c.id_cliente=f.id_cliente
		join PERSONAS p on p.id_persona=c.id_persona
		join OBRAS_SOCIALES os on os.cuit_obra_social=c.cuit_obra_social
		join sucursales s on s.id_sucursal=f.id_sucursal
		join PRODUCTOS pr on pr.id_producto=df.id_producto
		where  month(f.fecha_factura) in (1,2,3) and year(f.fecha_factura)=year(getdate())
		group by c.cuit_obra_social, 
		os.nom_obra_social,
		s.nom_sucursal,
		pr.id_tipo_producto, 
		pr.nombre_comercial
		order by 3 desc
		
											
		
	else 
		if @trim = 2--abril-junio
		Select top 1 os.nom_obra_social 'Obra_social', 
		 s.nom_sucursal Sucursal, 
		 sum(df.cantidad) 'Cantidad_Vendida',
		pr.id_tipo_producto 'Tipo_producto', 
		pr.nombre_comercial 'Nombre_Comercial_del_Producto'
		from
		DETALLES_FACTURA df join
		FACTURAS f on f.id_factura=df.id_factura
		join Clientes c on c.id_cliente=f.id_cliente
		join PERSONAS p on p.id_persona=c.id_persona
		join OBRAS_SOCIALES os on os.cuit_obra_social=c.cuit_obra_social
		join sucursales s on s.id_sucursal=f.id_sucursal
		join PRODUCTOS pr on pr.id_producto=df.id_producto
		where  month(f.fecha_factura) in (4,5,6) and year(f.fecha_factura)=year(getdate())
		group by c.cuit_obra_social, 
		os.nom_obra_social,
		s.nom_sucursal,
		pr.id_tipo_producto, 
		pr.nombre_comercial
		order by 3 desc
	else
		if @trim = 3 --julio-setiembre
		Select top 1 os.nom_obra_social 'Obra_social', 
		 s.nom_sucursal Sucursal, 
		 sum(df.cantidad) 'Cantidad_Vendida',
		pr.id_tipo_producto 'Tipo_producto', 
		pr.nombre_comercial 'Nombre_Comercial_del_Producto'
		from
		DETALLES_FACTURA df join
		FACTURAS f on f.id_factura=df.id_factura
		join Clientes c on c.id_cliente=f.id_cliente
		join PERSONAS p on p.id_persona=c.id_persona
		join OBRAS_SOCIALES os on os.cuit_obra_social=c.cuit_obra_social
		join sucursales s on s.id_sucursal=f.id_sucursal
		join PRODUCTOS pr on pr.id_producto=df.id_producto
		where  month(f.fecha_factura) in (7,8,9) and year(f.fecha_factura)=year(getdate())
		group by c.cuit_obra_social, 
		os.nom_obra_social,
		s.nom_sucursal,
		pr.id_tipo_producto, 
		pr.nombre_comercial
		order by 3 desc
	else
		if @trim = 4--octubre-diciembre
		Select top 1 os.nom_obra_social 'Obra_social', 
		 s.nom_sucursal Sucursal, 
		 sum(df.cantidad) 'Cantidad_Vendida',
		pr.id_tipo_producto 'Tipo_producto', 
		pr.nombre_comercial 'Nombre_Comercial_del_Producto'
		from
		DETALLES_FACTURA df join
		FACTURAS f on f.id_factura=df.id_factura
		join Clientes c on c.id_cliente=f.id_cliente
		join PERSONAS p on p.id_persona=c.id_persona
		join OBRAS_SOCIALES os on os.cuit_obra_social=c.cuit_obra_social
		join sucursales s on s.id_sucursal=f.id_sucursal
		join PRODUCTOS pr on pr.id_producto=df.id_producto
		where  month(f.fecha_factura) in (10,11,12) and year(f.fecha_factura)=year(getdate())
		group by c.cuit_obra_social, 
		os.nom_obra_social,
		s.nom_sucursal,
		pr.id_tipo_producto, 
		pr.nombre_comercial
		order by 3 desc
GO
/****** Object:  StoredProcedure [dbo].[Consulta8]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[Consulta8]-----CONTROLAR ESTA CONSULTA NO ARROJA RESULTADOS EN NINGUN MES
@mes int 
as
Select id_empleado, apellido +' '+ nombre 'Empleado', 'No vendió este mes en curso' Tipo
From EMPLEADOS e join PERSONAS p on p.id_persona=e.id_persona
where id_empleado not in (select id_empleado
                          From FACTURAS
						  where month(fecha_factura)=@mes+1 and year(fecha_factura)=year(getdate()))
                          
UNION
Select id_empleado, apellido +' '+ nombre, 'No vendió este mes en el año pasado'
From EMPLEADOS e join PERSONAS p on p.id_persona=e.id_persona
where id_empleado not in (select id_empleado
                          From FACTURAS f
                          where month(fecha_factura)=@mes+1
                          and year(f.fecha_factura)=year(getdate())-1)
order by 2
GO
/****** Object:  StoredProcedure [dbo].[pa_mas_vendidos_x_sucursal]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[pa_mas_vendidos_x_sucursal]
@fecha_min date, 
@fecha_max date,
@sucursal int 
as
begin
select top 3 fecha_factura 'Fecha', p.id_producto 'Codigo',
nombre_comercial 'Nombre_Producto',
cod_barras 'Codigo_de_Barras',
sum(precio_venta*cantidad) 'Importe_Total',
tp.descripcion 'Tipo_de_Producto'
from FACTURAS f
join DETALLES_FACTURA df on df.id_factura=f.id_factura
join SUCURSALES s on s.Id_Sucursal=f.id_sucursal
join PRODUCTOS p on p.id_producto=df.id_producto
join tipos_productos tp on tp.id_tipo_producto=p.id_tipo_producto
where f.fecha_factura between @fecha_min and @fecha_max
and f.id_sucursal=@sucursal
group by fecha_factura, p.id_producto, nombre_comercial, cod_barras, tp.descripcion
order by 1 desc
end
GO
/****** Object:  StoredProcedure [dbo].[SP_CLIENTES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SP_CLIENTES]
as
begin 
select id_cliente, nombre, apellido, cuit_Obra_social, c.id_condicion_iva
from CLIENTES c join personas p on p.id_persona=c.id_persona
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Consulta2]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Consulta2]
as
begin
select top 1 e.id_empleado 'Codigo_Empleado',
nombre+','+apellido 'Empleado',
nom_sucursaL 'Sucursal',
sum(df.precio_venta*cantidad) 'Total_Facturado',
sum(df.precio_venta*cantidad)/100 'Premio',
'Enero-Junio' Semestre
from EMPLEADOS e
join FACTURAS f on f.id_empleado=e.id_empleado
join DETALLES_FACTURA df on df.id_factura=f.id_factura
join SUCURSALES s on s.Id_Sucursal=f.id_sucursal
join PERSONAS p on p.id_persona=e.id_persona
where month(fecha_factura) in (1,2,3,4,5,6)
group by e.id_empleado,nombre+','+apellido,nom_sucursaL
union
select top 1 e.id_empleado 'Codigo_Empleado',
nombre+','+apellido 'Empleado',
nom_sucursaL 'Sucursal',
sum(df.precio_venta*cantidad) 'Total_Facturado',
sum(df.precio_venta*cantidad)/100 'Premio',
'Julio-Diciembre' Semestre
from EMPLEADOS e
join FACTURAS f on f.id_empleado=e.id_empleado
join DETALLES_FACTURA df on df.id_factura=f.id_factura
join SUCURSALES s on s.Id_Sucursal=f.id_sucursal
join PERSONAS p on p.id_persona=e.id_persona
where month(fecha_factura) in (7,8,9,10,11,12)
group by e.id_empleado,nombre+','+apellido,nom_sucursaL
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Consulta3]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Consulta3]
@tipo int,
@sucursal int
as
begin
select p.id_producto 'Codigo', p.nombre_comercial 'Producto',
tp.descripcion 'Tipo_de_Producto', s.nom_sucursaL 'Sucursal',
sum(cantidad) 'Cantidad',
sum(precio*cantidad) 'Total_en_pesos'
from PRODUCTOS p join STOCKS st on st.id_producto=p.id_producto
join tipos_productos tp on tp.id_tipo_producto=p.id_tipo_producto
join SUCURSALES s on s.Id_Sucursal=st.id_sucursal
where tp.id_tipo_producto= @tipo and
      s.Id_Sucursal= @sucursal
group by p.id_producto,p.nombre_comercial,tp.descripcion, s.nom_sucursaL
order by 2
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Consulta4]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Consulta4]
@tipo int,
@sucursal int
as
begin
select s.nom_sucursal 'Sucursal', t.descripcion 'Tipo_producto', p.nombre_comercial 'Producto',

count(df.id_producto)'Cantidad_de_ventas',
sum(precio_venta*cantidad) /count(distinct f.id_factura) 'Promedio_de_venta'
from SUCURSALES s join facturas f on f.id_sucursal=s.Id_Sucursal
join DETALLES_FACTURA df on df.id_factura=f.id_factura
join PRODUCTOS p on p.id_producto=df.id_producto
join tipos_productos t on t.id_tipo_producto=p.id_tipo_producto
where year(f.fecha_factura)=Year(getdate())-1 and
t.id_tipo_producto=@tipo 
and s.id_Sucursal= @sucursal
group by s.nom_sucursal , t.descripcion, p.nombre_comercial 
order by 2
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Consulta5]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Consulta5]
as
begin
select c.id_cliente 'Codigo', p.apellido+','+p.nombre 'Cliente', p.mail 'Correo_electónico',
'No vino este año' Observaciones,
 avg(precio_venta*cantidad)'Promedio_de_ventas'
from CLIENTES c join PERSONAS p on c.id_persona = p.id_persona
join FACTURAS f on f.id_cliente = c.id_cliente
join DETALLES_FACTURA df on df.id_factura = f.id_factura
where c.id_cliente not in (select id_cliente
 from FACTURAS f
where year(f.fecha_factura) = year(getdate())
and p.mail is not null)
group by c.id_cliente, p.apellido+','+p.nombre, p.mail
having avg(precio_venta*cantidad)>400
union
select c.id_cliente 'Codigo', p.apellido+','+p.nombre 'Cliente', p.mail 'Correo_electónico', 'Vino más de 5 veces este año',
avg(precio_venta*cantidad)'Promedio_de_ventas'
from CLIENTES c join PERSONAS p on c.id_persona = p.id_persona
join FACTURAS f on f.id_cliente = c.id_cliente
join DETALLES_FACTURA df on df.id_factura = f.id_factura
where year(f.fecha_factura) = year(getdate())
 and p.mail is not null
group by c.id_cliente, p.apellido+','+p.nombre, p.mail
having count(f.id_cliente)>=3
order by 2
end
GO
/****** Object:  StoredProcedure [dbo].[SP_FORMA_PAGO]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_FORMA_PAGO]--MOSTRAR FORMAS DE PAGO EN COMBO FORMAS DE PAGO
as
begin 
select *from FORMAS_PAGO
end
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERT_PRODUCTO]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_INSERT_PRODUCTO] ---INSERT DE PRODUCTOS NUEVOS
@receta bit,
@desc varchar (100),
@nombre varchar(100),
@codigo_barras int,
@pre decimal(18,0),
@venc date,
@id_tipo int
as
begin
insert into PRODUCTOS(vta_receta,descripcion,nombre_comercial,cod_barras,precio,vencimiento,id_tipo_producto) values(@receta,@desc,@nombre,@codigo_barras,@pre,@venc,@id_tipo)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_DETALLE]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_INSERTAR_DETALLE]
@id_factura int,
@id_producto int,
@cantidad int,
@precio_venta decimal (10,2),
@descuento_sucursal decimal (10,2)
as
begin
insert into DETALLES_FACTURA (id_factura, id_producto, cantidad, precio_venta,  descuento_sucursal)
values (@id_factura, @id_producto, @cantidad, @precio_venta, @descuento_sucursal);
end
GO
/****** Object:  StoredProcedure [dbo].[SP_INSERTAR_MAESTRO]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_INSERTAR_MAESTRO]
@fecha_factura datetime,
@id_forma_pago int,
@id_cliente int,
@id_sucursal int,
@id_factura int output,
@id_empleado int
as
begin
insert into FACTURAS (fecha_factura, id_forma_pago, id_cliente, id_sucursal, id_empleado)
values (@fecha_factura, @id_forma_pago, @id_cliente, @id_sucursal, @id_empleado);
set @id_factura = SCOPE_IDENTITY()
end
/****** Object:  StoredProcedure [dbo].[sp_insertar_producto]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_insertar_producto]
@tipo_producto int,
@descripcion varchar(500),
@nombre_comercial varchar(200),
@codigo_barras int,
@precio decimal,
@vto date,
@baja bit
as
begin
insert into productos (id_tipo_producto, descripcion, nombre_comercial, cod_barras, precio, vencimiento, baja)
values (@tipo_producto, @descripcion, @nombre_comercial, @codigo_barras, @precio, @vto, @baja)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGINGERENTE]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LOGINGERENTE]
@usuario varchar(50),
@pass varchar(50)
as
select * from LoginGerentes where usuarioG=@usuario and passG=@pass
GO
/****** Object:  StoredProcedure [dbo].[SP_LOGINS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_LOGINS]
@usuario varchar(50),
@pass varchar(50)
as
select * from LOGINS where usuario=@usuario and pass=@pass
GO
/****** Object:  StoredProcedure [dbo].[sp_modificar_producto]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_modificar_producto]
@id_producto int, 
@tipo_producto int,
@descripcion varchar(500),
@nombre_comercial varchar(200),
@codigo_barras int,
@precio decimal,
@vto date,
@baja bit
as
begin 
update productos set id_tipo_producto=@tipo_producto, descripcion=@descripcion, nombre_comercial=@nombre_comercial,
cod_barras=@codigo_barras, precio=@precio, vencimiento=@vto, baja=@baja 
where id_producto=@id_producto
end
GO
/****** Object:  StoredProcedure [dbo].[SP_MOSTRAR_MESES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_MOSTRAR_MESES]---MUESTRA LOS meses EN UN COMBO
as
begin 
select * from MESES
end
GO
/****** Object:  StoredProcedure [dbo].[SP_MOSTRAR_PRODUCTOS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_MOSTRAR_PRODUCTOS] --MOSTRAR PRODUCTOS 
						
AS
SELECT id_producto idProd, p.descripcion Pdescrip, nombre_comercial Nombre, 
precio Pre, vencimiento Vto, baja Baj, cod_barras Cod,
p.id_tipo_producto IdTipo, tp.descripcion TPdescrip 
FROM PRODUCTOS p join tipos_productos tp on tp.id_tipo_producto=p.id_tipo_producto
order by nombre_comercial

GO
/****** Object:  StoredProcedure [dbo].[SP_MOSTRAR_SUCURSALES]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_MOSTRAR_SUCURSALES]--MOSTRAR SUCURSALES EN COMBO
AS
BEGIN
SELECT * FROM SUCURSALES
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MOSTRAR_TIPOS_PRODUCTOS]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_MOSTRAR_TIPOS_PRODUCTOS] --MOSTRAR LOS TIPOS DE PRODUCTOS
AS
BEGIN
SELECT * FROM tipos_productos
END
GO
/****** Object:  StoredProcedure [dbo].[SP_MOSTRAR_TRIMESTRE]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_MOSTRAR_TRIMESTRE]---MUESTRA LOS TRIMESTRES EN UN COMBO
as
begin 
select * from TRIMESTRES
end
GO
/****** Object:  StoredProcedure [dbo].[SP_PROXIMO_NUMERO_FACTURA]    Script Date: 9/11/2022 18:58:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_PROXIMO_NUMERO_FACTURA]--PARA MOSTRAR EL NUMERO DE FACTURA EN LA PANTALLA DE CARGA
@prox int OUTPUT
AS
BEGIN
	SET @prox = (SELECT MAX(id_factura)+1  FROM FACTURAS);
END
GO


