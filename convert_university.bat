@echo off

@REM set encoding for italian special accents
chcp 65001 > nul

@REM set ORIGIN=C:\eLearning4\courses 
set ORIGIN=C:\eLearning4\eLearning4\courses
set DESTINATION=C:\working\courses\University

if exist errors.log del errors.log

@REM Only for debug, clearing the folders
set "folderPath=C:\working\courses"
if exist "%folderPath%\University" (
    rmdir /s /q "%folderPath%\University"
)
if exist "%folderPath%\output" (
    rmdir /s /q "%folderPath%\output"
)

mkdir "%folderPath%\University"
mkdir "%folderPath%\output"

@REM C:\eLearning4\eLearning4\courses\Financial\VideoMagoCloud
@REM C:\eLearning4\eLearning4\courses\Logistics\VideoMagoCloud
@REM C:\eLearning4\eLearning4\courses\Produzione\Videocorsi
@REM C:\eLearning4\eLearning4\courses\Task Builder\Videocorsi 

goto:skipToOk

call convert_course "Logistics\Articoli e relativi dati anagrafici - EN"                                University_EN\Mago4\Logistics\Items_Master_Data
@REM MULTIPLI TXT
@REM BUILDA CON TUTTI E DUE, FORSE SONO DA FARE DUE CORSI SEPARATI? 
call convert_course "Logistics\Articoli e relativi dati anagrafici"                                     University_IT\Mago4\Logistics\Items_Master_Data
@REM MULTIPLI TXT
@REM BUILDA CON TUTTI E DUE, FORSE SONO DA FARE DUE CORSI SEPARATI? 
call convert_course "Logistics\Articoli e relativi dati anagrafici-CL"                                  University_IT\MagoCloud\Logistics\Items_Master_Data
@REM MULTIPLI TXT
@REM BUILDA CON TUTTI E DUE, FORSE SONO DA FARE DUE CORSI SEPARATI? 
call convert_course Logistics\GuidaPerIniziareLaGestioneWMS                                             University_IT\Mago4\Logisitics\Wms_Starting_Guide
@REM MULTIPLI TXT
@REM IL SECONDO TXT E' VUOTO, CANCELLARLO A MANO? 
call convert_course CGM\CGM                                                                             University_IT\Mago4\Masters\CGM 
@REM MULTIPLI TXT
@REM SONO DIVERSI 

call convert_course Logistics\GliArticoliEquivalenti-CL-EN                                              University_EN\MagoCloud\Logistics\Substitute_Items
@REM IMMAGINI MANCANTI, NON PUBBLICATO IN UNIVERSITY, DA VERIFICARE
call convert_course Logistics\LaGestioneVarianti                                                        University_IT\Mago4\Logistics\Variants_Management /F
@REM IMMAGINI MANCANTI, NON PUBBLICATO IN UNIVERSITY, DA VERIFICARE
call convert_course Logistics\Barcode-CL-EN                                                             University_EN\MagoCloud\Logistics\Barcode /F
@REM IMMAGINI MANCANTI, NON PUBBLICATO IN UNIVERSITY, DA VERIFICARE

call convert_course Logistics\FatturazioneElettronicaPassivaAvanzata                                    University_IT\Mago4\MDC\Advanced_Purchase_Electronic_Invoices
@REM DOPPIONI
call convert_course Logistics\FatturazioneElettronicaPassivaAvanzataNEW                                 University_IT\Mago4\MDC\Advanced_Purchase_Electronic_Invoices
@REM DOPPIONI

call convert_course Financial\Percipienti                                                               University_IT\Mago4\Financial\Payees
@REM WARNING MISSING CONTEXT
call convert_course Financial\BilanciConsolidati                                                        University_IT\Mago4\Financial\Multicompany_Balances
@REM WARNING MISSING CONTEXT

:skipToOk

call convert_course CGM\CGM_EN                                                                          University_EN\Mago4\Masters\CGM 
call convert_course CGM\CGM_EN                                                                          University_EN\Mago4\Masters\CGM 
call convert_course Financial\FatturazioneElettronicaPassiva_CL                                         University_IT\MagoCloud\MDC\Purchase_Electronic_Invoices /S
call convert_course Financial\FatturazioneElettronicaPassiva                                            University_IT\Mago4\MDC\Purchase_Electronic_Invoices /M /S
call convert_course Financial\Anagrafiche                                                               University_IT\Mago4\Masters\Masters
call convert_course Financial\AnagraficheEN                                                             University_EN\Mago4\Masters\Masters
call convert_course Financial\AnagraficheRO                                                             University_RO\Mago4\Masters\Masters
call convert_course Financial\Anagrafiche_CL                                                            University_IT\MagoCloud\Masters\Masters
call convert_course Financial\Anagrafiche_CL_EN                                                         University_EN\MagoCloud\Masters\Masters
call convert_course Financial\Anagrafiche_CL_RO                                                         University_RO\MagoCloud\Masters\Masters
call convert_course Financial\AmazonDSP                                                                 University_IT\MagoCloud\Financial\AmazonDSP
call convert_course Financial\AmazonDSP_DE                                                              University_DE\MagoCloud\Financial\AmazonDSP /I
call convert_course Financial\AssestamentiAutomatici                                                    University_IT\Mago4\Financial\AccrualDeferrals
call convert_course Financial\CespitiAmmortamenti                                                       University_IT\Mago4\Financial\Fixed_Assets_Depreciations
call convert_course Financial\CespitiAnagrafiche                                                        University_IT\Mago4\Financial\Fixed_Assets_Masters
call convert_course Financial\CespitiDismissioni                                                        University_IT\Mago4\Financial\Fixed_Assets_Disposal
call convert_course Financial\CespitiMovimenti                                                          University_IT\Mago4\Financial\Fixed_Assets_Entries
call convert_course Financial\ChiusureAperture                                                          University_IT\Mago4\Financial\Opening_Closing
call convert_course Financial\ChiusureApertureEN                                                        University_EN\Mago4\Financial\Opening_Closing
call convert_course Financial\ChiusureApertureRO                                                        University_RO\Mago4\Financial\Opening_Closing
call convert_course Financial\ChiusureAperture_CL                                                       University_IT\MagoCloud\Financial\Opening_Closing
call convert_course Financial\ChiusureAperture_CL_EN                                                    University_EN\MagoCloud\Financial\Opening_Closing
call convert_course Financial\ChiusureAperture_CL_RO                                                    University_RO\MagoCloud\Financial\Opening_Closing
call convert_course Financial\EffettiEMandati                                                           University_IT\Mago4\Financial\Bills_and_Payment_Orders
call convert_course Financial\EffettiEMandatiEN                                                         University_EN\Mago4\Financial\Bills_and_Payment_Orders
call convert_course Financial\EffettiEMandatiRO                                                         University_RO\Mago4\Financial\Bills_and_Payment_Orders
call convert_course Financial\EffettiEMandati_CL                                                        University_IT\MagoCloud\Financial\Bills_and_Payment_Orders
call convert_course Financial\EffettiEMandati_CL_EN                                                     University_EN\MagoCloud\Financial\Bills_and_Payment_Orders
call convert_course Financial\EffettiEMandati_CL_RO                                                     University_RO\MagoCloud\Financial\Bills_and_Payment_Orders
call convert_course Financial\ElenchiIntrastat                                                          University_IT\Mago4\Financial\Intrastat
call convert_course Financial\Enasarco                                                                  University_IT\Mago4\Financial\Enasarco
call convert_course Financial\FatturazioneElettronicaAttiva_CL                                          University_IT\MagoCloud\Financial\Sales_Electronic_Invoices
call convert_course Financial\FatturazioneElettronica_Integrazioni                                      University_IT\Mago4\MDC\Electronic_Invoices_Integrations
call convert_course Financial\LocalizzazioniFinancialRomaniaEN                                          University_EN\Mago4\Financial\Romanian_Localizations
call convert_course Financial\LocalizzazioniFinancialRomaniaRO                                          University_RO\Mago4\Financial\Romanian_Localizations
call convert_course Financial\MovimentiContabili                                                        University_IT\Mago4\Financial\Accounting_Entries
call convert_course Financial\MovimentiContabiliEN                                                      University_EN\Mago4\Financial\Accounting_Entries
call convert_course Financial\MovimentiContabiliRO                                                      University_RO\Mago4\Financial\Accounting_Entries
call convert_course Financial\MovimentiContabili_CL                                                     University_IT\MagoCloud\Financial\Accounting_Entries
call convert_course Financial\MovimentiContabili_CL_EN                                                  University_EN\MagoCloud\Financial\Accounting_Entries
call convert_course Financial\MovimentiContabili_CL_RO                                                  University_RO\MagoCloud\Financial\Accounting_Entries
call convert_course Financial\Partite                                                                   University_IT\Mago4\Financial\AP_AR
call convert_course Financial\PartiteEN                                                                 University_EN\Mago4\Financial\AP_AR
call convert_course Financial\PartiteRO                                                                 University_RO\Mago4\Financial\AP_AR
call convert_course Financial\Partite_CL                                                                University_IT\MagoCloud\Financial\AP_AR
call convert_course Financial\Partite_CL_EN                                                             University_EN\MagoCloud\Financial\AP_AR
call convert_course Financial\Partite_CL_RO                                                             University_RO\MagoCloud\Financial\AP_AR
call convert_course Financial\StampeFiscali                                                             University_IT\Mago4\Financial\Fiscal_Printouts
call convert_course Financial\StampeFiscaliEN                                                           University_EN\Mago4\Financial\Fiscal_Printouts
call convert_course Financial\StampeFiscaliRO                                                           University_RO\Mago4\Financial\Fiscal_Printouts
call convert_course Financial\StampeFiscali_CL                                                          University_IT\MagoCloud\Financial\Fiscal_Printouts
call convert_course Financial\StampeFiscali_CL_EN                                                       University_EN\MagoCloud\Financial\Fiscal_Printouts
call convert_course Financial\StampeFiscali_CL_RO                                                       University_RO\MagoCloud\Financial\Fiscal_Printouts
call convert_course Financial\FatturazioneElettronica_Autofatture                                       University_IT\Mago4\MDC\Self_Electronic_Invoices /I
call convert_course Financial\FatturazioneElettronica                                                   University_IT\Mago4\Financial\Electronic_Invoices /F
call convert_course Financial\FatturazioneElettronicaAttiva                                             University_IT\Mago4\Financial\Sales_Electronic_Invoices
call convert_course IMago\Gadget                                                                        University_IT\Mago4\CRM\Gadget
call convert_course IMago\InstallazioneComponenti                                                       University_IT\Mago4\CRM\Components_Installation
call convert_course IMago\Posta                                                                         University_IT\Mago4\CRM\Mail
call convert_course IMago\ProcessoDiSincronizzazione                                                    University_IT\Mago4\CRM\Synchronization_Process
call convert_course IMago\ProcessoDiValidazione                                                         University_IT\Mago4\CRM\Validation_Process
call convert_course IMago\SincroInfMago                                                                 University_IT\Mago4\CRM\Infinity_Mago_Synchronization
call convert_course IMago\SsoMappatura                                                                  University_IT\Mago4\CRM\Mapping_SSO
call convert_course IMago\WizardDiConfigurazione                                                        University_IT\Mago4\CRM\Configuration_Wizard
call convert_course Logistics\UscitaMerceWMS                                                            University_IT\MagoCloud\Logistics\Goods_Delivery
call convert_course Logistics\UscitaMerceWMS_EN                                                         University_EN\MagoCloud\Logistics\Goods_Delivery
call convert_course Logistics\GliArticoliEquivalenti-CL-IT                                              University_IT\MagoCloud\Logistics\Substitute_Items /F /F /L
call convert_course Logistics\LAnagraficaAgenti-CL-IT                                                   University_IT\MagoCloud\Sales\Salespeople_Master /F /F /F
call convert_course Logistics\IDocumentiDelCicloAttivo-CL-IT                                            University_IT\MagoCloud\Sales\Sale_Documents /F /F
call convert_course Logistics\LeUnitaDiMisura-CL-IT                                                     University_IT\MagoCloud\Logistics\Units_Of_Measure /F /F
call convert_course Logistics\PrezziEScontiNelCicloAttivo-CL-IT                                         University_IT\MagoCloud\Sales\Price_Discount_Polices /F /F
call convert_course Logistics\ArticoliAcquisizione-EN                                                   University_IT\MagoCloud\Logistics\Acquisition_Item
call convert_course "Logistics\ArticoliERelativiDatiAnagrafici-CL EN"                                   University_EN\MagoCloud\Logistics\Items_Master_Data
call convert_course Logistics\ArticoliERelativiDatiAnagrafici-CL-RO                                     University_RO\MagoCloud\Logistics\Items_Master_Data
call convert_course Logistics\Barcode-EN                                                                University_EN\Mago4\Logistics\Barcode
call convert_course "Logistics\CodiceParlante - CL - EN"                                                University_EN\MagoCloud\Logistics\Smart_Codes
call convert_course Logistics\CodiceParlante-CL-RO                                                      University_RO\MagoCloud\Logistics\Smart_Codes
call convert_course Logistics\ComeTrasferireMerceTraPV-EN                                               University_EN\MagoCloud\Logistics\Transfer_Between_Shops
call convert_course Logistics\ConfigurazioneInizialeMagoKonaKart                                        University_IT\MagoCloud\Logistics\Konakart_Setup
call convert_course Logistics\ConfigurazioneInizialeMagoKonaKart_ENG                                    University_EN\MagoCloud\Logistics\Konakart_Setup
call convert_course Logistics\Convenzioni-EN                                                            University_EN\Mago4\Retail\Subsidies /F
call convert_course Logistics\DatiAlimentari-EN                                                         University_EN\MagoCloud\Logistics\Alimentary_Data
call convert_course Logistics\DESADV-EN                                                                 University_EN\MagoCloud\Logistics\DESADV
call convert_course Logistics\EDI-EN                                                                    University_EN\MagoCloud\Logistics\EDI
call convert_course Logistics\EtichettePrezzoVendita-EN                                                 University_EN\MagoCloud\Logistics\Label_Sale_Price
call convert_course Logistics\EvasioneInterattivaOrdiniCliente                                          University_IT\Mago4\Sales\Sale_Orders_Fulfillment
call convert_course Logistics\EvasioneInterattivaOrdiniCliente-CL-IT                                    University_IT\MagoCloud\Sales\Sale_Orders_Fulfillment
call convert_course Logistics\FatturazioneElettronicaGestioneAsincrona                                  University_IT\Mago4\MDC\Asynchronous_Electronic_Invoices
call convert_course "Logistics\FormatiUM - EN"                                                          University_EN\Mago4\Retail\UoM_Sizes /F
call convert_course Logistics\GestioneVouchers-EN                                                       University_EN\Mago4\Retail\Vouchers /F
call convert_course Logistics\GliArticoliEquivalenti                                                    University_IT\Mago4\Logistics\Substitute_Items
call convert_course Logistics\GliArticoliEquivalenti-EN                                                 University_EN\Mago4\Logistics\Substitute_Items
call convert_course Logistics\GuidaPerIniziareLaGestioneWMS_EN                                          University_EN\Mago4\Logisitics\Wms_Starting_Guide
call convert_course Logistics\IDatiClienteArticoloFornitoreArticolo                                     University_IT\Mago4\Logistics\Item_Customers_Suppliers
call convert_course Logistics\IDatiClienteArticoloFornitoreArticolo-CL-EN                               University_EN\MagoCloud\Logistics\Item_Customers_Suppliers
call convert_course Logistics\IDatiClienteArticoloFornitoreArticolo-CL-RO                               University_RO\MagoCloud\Logistics\Item_Customers_Suppliers
call convert_course Logistics\IDatiClienteArticoloFornitoreArticolo-EN                                  University_EN\Mago4\Logistics\Item_Customers_Suppliers
call convert_course Logistics\IDocumentiDelCicloAttivo                                                  University_IT\Mago4\Sales\Sale_Documents
call convert_course Logistics\IDocumentiDelCicloAttivo-CL-EN                                            University_EN\MagoCloud\Sales\Sale_Documents
call convert_course Logistics\IDocumentiDelCicloAttivo-CL-RO                                            University_RO\MagoCloud\Sales\Sale_Documents
call convert_course Logistics\IDocumentiDelCicloAttivo-EN                                               University_EN\Mago4\Sales\Sale_Documents
call convert_course Logistics\IDocumentiDelCicloPassivo                                                 University_IT\Mago4\Purchases\Purchase_Documents
call convert_course Logistics\IDocumentiDelCicloPassivo-CL-IT                                           University_IT\MagoCloud\Purchases\Purchase_Documents
call convert_course Logistics\IDocumentiDelCicloPassivo-CL-EN                                           University_EN\MagoCloud\Purchases\Purchase_Documents
call convert_course Logistics\IlCodiceParlante                                                          University_IT\Mago4\Logistics\Smart_Codes
call convert_course Logistics\IlCodiceParlante-EN                                                       University_EN\Mago4\Logistics\Smart_Codes
call convert_course Logistics\IlDocumentoDiTrasporto                                                    University_IT\Mago4\Sales\Delivery_Notes
call convert_course Logistics\IlDocumentoDiTrasporto-CL-IT                                              University_IT\MagoCloud\Sales\Delivery_Notes
call convert_course Logistics\IlDocumentoDiTrasporto-CL-RO                                              University_RO\MagoCloud\Sales\Delivery_Notes
call convert_course Logistics\IlDocumentoDiTrasporto-EN                                                 University_EN\Mago4\Sales\Delivery_Notes
call convert_course Logistics\IMovimentiAgenti                                                          University_IT\Mago4\Sales\Salespeople_Entries
call convert_course Logistics\IlTrasferimentoDellaMerceWMS                                              University_IT\Mago4\Logistics\Wms_Stock_Transfer
call convert_course Logistics\IlTrasferimentoDellaMerceWMS_EN                                           University_EN\Mago4\Logistics\Wms_Stock_Transfer
call convert_course Logistics\InStoreApp-GoodReceipt-EN                                                 University_EN\MagoCloud\Logistics\InStore_Good_Receipt
call convert_course Logistics\InStoreApp-InformazioniArticolo-EN                                        University_EN\MagoCloud\Logistics\InStore_Item_Info
call convert_course Logistics\InStoreApp-Inventario-EN                                                  University_EN\MagoCloud\Logistics\InStore_Inventory
call convert_course Logistics\InStoreApp-InventoryTransaction-EN                                        University_EN\MagoCloud\Logistics\InStore_Inventory_Transaction
call convert_course Logistics\InStoreApp-OrdineAFornitore-EN                                            University_EN\MagoCloud\Logistics\InStore_Order_Supplier
call convert_course Logistics\InStoreApp-TrasferimentoTraDepositi-EN                                    University_EN\MagoCloud\Logistics\InStore_Storage_Transfer
call convert_course Logistics\InStoreAppIntroduction-EN                                                 University_EN\MagoCloud\Logistics\InStore_Good_Receipt
call convert_course Logistics\InStoreAppTrasferimentiTraPuntiVendita-EN                                 University_EN\MagoCloud\Logistics\InStore_Store_Transfer
call convert_course Logistics\IntroduzioneMagoCloud                                                     University_IT\MagoCloud\Masters\MagoCloud_Introduction
call convert_course Logistics\IntroduzioneMagoCloudEN                                                   University_EN\MagoCloud\Masters\MagoCloud_Introduction
call convert_course Logistics\IntroduzioneMagoCloudRO                                                   University_RO\MagoCloud\Masters\MagoCloud_Introduction
call convert_course Logistics\KKPrimoAvvio                                                              University_IT\Mago4\Retail\KonaKart_Getting_Started
call convert_course Logistics\KKPrimoAvvio-EN                                                           University_EN\Mago4\Retail\KonaKart_Getting_Started
call convert_course Logistics\LAnagraficaAgenti                                                         University_IT\Mago4\Sales\Salespeople_Master
call convert_course Logistics\LAnagraficaAgenti-CL-EN                                                   University_EN\MagoCloud\Sales\Salespeople_Master
call convert_course Logistics\LOffertaACliente                                                          University_IT\Mago4\Sales\Customer_Quotation
call convert_course Logistics\LOffertaACliente-CL-IT                                                    University_IT\MagoCloud\Sales\Customer_Quotation
call convert_course Logistics\LOrdineDaCliente                                                          University_IT\Mago4\Sales\Sales_Order
call convert_course Logistics\LOrdineDaCliente-CL                                                       University_IT\MagoCloud\Sales\Sales_Order /F
call convert_course Logistics\LOrdineDaCliente-CL-EN                                                    University_EN\MagoCloud\Sales\Sales_Order
call convert_course Logistics\LOrdineDaCliente-EN                                                       University_EN\Mago4\Sales\Sales_Order
call convert_course Logistics\LaChiusuraDiMagazzino                                                     University_IT\Mago4\Logistics\Inventory_Closing
call convert_course Logistics\LaChiusuraDiMagazzino-CL                                                  University_IT\MagoCloud\Logistics\Inventory_Closing
call convert_course Logistics\LaChiusuraDiMagazzino-CL-EN                                               University_EN\MagoCloud\Logistics\Inventory_Closing
call convert_course Logistics\LaChiusuraDiMagazzino-CL-RO                                               University_RO\MagoCloud\Logistics\Inventory_Closing
call convert_course Logistics\LaChiusuraDiMagazzino-EN                                                  University_EN\Mago4\Logistics\Inventory_Closing
call convert_course Logistics\LaConfigurazioneDiUnDepositoDiWMS                                         University_IT\Mago4\Logistics\WMS_Storage_Configuration
call convert_course Logistics\LaConfigurazioneDiUnDepositoDiWMS-CL-IT                                   University_IT\MagoCloud\Logistics\WMS_Storage_Configuration
call convert_course Logistics\LaConfigurazioneDiUnDepositoDiWMS-EN                                      University_EN\Mago4\Logistics\WMS_Storage_Configuration
call convert_course Logistics\LaFatturaAccompagnatoria                                                  University_IT\Mago4\Sales\Accompanying_Invoice
call convert_course Logistics\LaFatturaImmediata                                                        University_IT\Mago4\Sales\Sale_Invoice
call convert_course Logistics\LaFatturaImmediata-CL-IT                                                  University_IT\MagoCloud\Sales\Sale_Invoice
call convert_course Logistics\LaFatturaImmediata-CL-RO                                                  University_RO\MagoCloud\Sales\Sale_Invoice
call convert_course Logistics\LaFatturaProforma                                                         University_IT\Mago4\Sales\ProForma_Invoice
call convert_course Logistics\LaFatturazioneDifferitaDDT                                                University_IT\Mago4\Sales\Delivery_Notes_Deferred_Invoicing
call convert_course Logistics\LaFatturazioneDifferitaDDT-CL                                             University_IT\MagoCloud\Sales\Delivery_Notes_Deferred_Invoicing
call convert_course Logistics\LaFatturazioneDifferitaDDT-CL-RO                                          University_RO\MagoCloud\Sales\Delivery_Notes_Deferred_Invoicing
call convert_course Logistics\LaFatturazioneDifferitaDDT-EN                                             University_EN\Mago4\Sales\Delivery_Notes_Deferred_Invoicing
call convert_course Logistics\LaGestioneDeiLotti                                                        University_IT\Mago4\Logistics\Lots_Management
call convert_course Logistics\LaGestioneDeiLotti-CL-EN                                                  University_EN\MagoCloud\Logistics\Lots_Management
call convert_course Logistics\LaGestioneDeiLotti-CL-IT                                                  University_IT\MagoCloud\Logistics\Lots_Management /F
call convert_course Logistics\LaGestioneDeiLotti-CL-RO                                                  University_RO\MagoCloud\Logistics\Lots_Management
call convert_course Logistics\LaGestioneDeiLotti-EN                                                     University_EN\Mago4\Logistics\Lots_Management
call convert_course Logistics\LaGestioneMatricole                                                       University_IT\Mago4\Logistics\Serial_Number_Management
call convert_course Logistics\LaGestioneVarianti-EN                                                     University_EN\Mago4\Logistics\Variants_Management
call convert_course Logistics\LaManutenzioneDeiMovimenti                                                University_IT\Mago4\Logistics\Inventory_Entries_Maintenance
call convert_course Logistics\LaManutenzioneDeiMovimenti-CL-EN                                          University_EN\MagoCloud\Logistics\Inventory_Entries_Maintenance
call convert_course Logistics\LaManutenzioneDeiMovimenti-CL-IT                                          University_IT\MagoCloud\Logistics\Inventory_Entries_Maintenance /F
call convert_course Logistics\LaManutenzioneDeiMovimenti-CL-RO                                          University_RO\MagoCloud\Logistics\Inventory_Entries_Maintenance
call convert_course Logistics\LaManutenzioneDeiMovimenti-EN                                             University_EN\Mago4\Logistics\Inventory_Entries_Maintenance
call convert_course Logistics\LaMovimentazioneDeiLotti                                                  University_IT\Mago4\Logistics\Lots_In_Documents
call convert_course Logistics\LaMovimentazionedeiLotti-CL-IT                                            University_IT\MagoCloud\Logistics\Lots_In_Documents
call convert_course Logistics\LaMovimentazioneDeiLotti-EN                                               University_EN\Mago4\Logistics\Lots_In_Documents
call convert_course Logistics\LaMovimentazionedeiLotti-CL-EN                                            University_EN\MagoCloud\Logistics\Lots_In_Documents
call convert_course Logistics\LaNotaDiCredito                                                           University_IT\Mago4\Sales\Credit_Notes
call convert_course Logistics\LaNotaDiCredito-EN                                                        University_EN\Mago4\Sales\Credit_Notes
call convert_course Logistics\LaRicevutaFiscale                                                         University_IT\Mago4\Sales\Fiscal_Receipt
call convert_course Logistics\LeProcedureAutomatichedeiLotti-CL-IT                                      University_IT\MagoCloud\Logistics\Lots_Automatic_Procedures
call convert_course Logistics\LeProcedureAutomatiche                                                    University_IT\Mago4\Logistics\Lots_Automatic_Procedures
call convert_course Logistics\LeProcedureAutomatiche-EN                                                 University_EN\Mago4\Logistics\Lots_Automatic_Procedures
call convert_course Logistics\LeProcedureStampaRegistra                                                 University_IT\Mago4\Sales\Print_And_Post_Procedures
call convert_course Logistics\LeProcedureStampaRegistra-CL-IT                                           University_IT\MagoCloud\Sales\Print_And_Post_Procedures /F
call convert_course Logistics\LeProcedureStampaRegistra-CL-EN                                           University_EN\MagoCloud\Sales\Print_And_Post_Procedures
call convert_course Logistics\LeProcedureStampaRegistra-Rev02                                           University_IT\Mago4\Sales\Print_And_Post_Procedures
call convert_course Logistics\LeProvvigioniNeiDocumentiDelCicloAttivo                                   University_IT\Mago4\Sales\Commissions_In_Sale_Documents
call convert_course Logistics\LeUnitaDiMisura                                                           University_IT\Mago4\Logistics\Units_Of_Measure
call convert_course Logistics\LeUnitaDiMisura-CL-EN                                                     University_EN\MagoCloud\Logistics\Units_Of_Measure
call convert_course Logistics\LeUnitaDiMisura-CL-RO                                                     University_RO\MagoCloud\Logistics\Units_Of_Measure
call convert_course Logistics\LeUnitaDiMisura-EN                                                        University_EN\Mago4\Logistics\Units_Of_Measure
call convert_course Logistics\MovimentiDiCassa-EN                                                       University_EN\Mago4\Retail\Cash_Transaction /F
call convert_course Logistics\MovimentiDiMagazzino                                                      University_IT\Mago4\Logistics\Inventory_Entries
call convert_course Logistics\MovimentiDiMagazzino-CL                                                   University_IT\MagoCloud\Logistics\Inventory_Entries
call convert_course Logistics\MovimentiDiMagazzino-CL-EN                                                University_EN\MagoCloud\Logistics\Inventory_Entries
call convert_course Logistics\MovimentiDiMagazzino-CL-RO                                                University_RO\MagoCloud\Logistics\Inventory_Entries
call convert_course Logistics\MovimentiDiMagazzino-EN                                                   University_EN\Mago4\Logistics\Inventory_Entries
call convert_course Logistics\PosizionamentoDirettoWMS-EN                                               University_EN\Mago4\Logistics\Good_Receipt_Direct_Putaway_Wms
call convert_course Logistics\PrezziEScontiNelCicloAttivo                                               University_IT\Mago4\Sales\Price_Discount_Polices
call convert_course Logistics\PrezziEScontiNelCicloAttivo-CL-EN                                         University_EN\MagoCloud\Sales\Price_Discount_Polices
call convert_course Logistics\PrezziEScontiNelCicloAttivo-CL-RO                                         University_RO\MagoCloud\Sales\Price_Discount_Polices
call convert_course Logistics\PrezziEScontiNelCicloAttivo-EN                                            University_EN\Mago4\Sales\Price_Discount_Polices
call convert_course Logistics\ProduttoriCategorieeTipi                                                  University_IT\Mago4\Logistics\Manufacturers_Categories_Types
call convert_course Logistics\ProduttoriCategorieeTipi-EN                                               University_EN\Mago4\Logistics\Manufacturers_Categories_Types
call convert_course Logistics\RicMerciConPosizADimoraCLD                                                University_IT\MagoCloud\Logistics\Good_Receipt_Direct_Putaway
call convert_course Logistics\RicMerciConPosizADimoraCLD_EN                                             University_EN\MagoCloud\Logistics\Good_Receipt_Direct_Putaway
call convert_course Logistics\RicMerciDueFasiCLD                                                        University_IT\MagoCloud\Logistics\Good_Receipt_Direct_Putaway_Two_Steps
call convert_course Logistics\RicMerciDueFasiCLD_EN                                                     University_EN\MagoCloud\Logistics\Good_Receipt_Direct_Putaway_Two_Steps
call convert_course Logistics\RiordinoPuntoVendita-EN                                                   University_EN\Mago4\Logistics\Shop_Replenishment
call convert_course Logistics\RivalutazioneLifoFifo                                                     University_IT\Mago4\Logistics\Annual_LIFO_FIFO_Revaluation
call convert_course Logistics\Scontrini-EN                                                              University_EN\MagoCloud\Sales\Fiscal_Bills                           
call convert_course Logistics\TCPOSPrimoAvvio                                                           University_IT\Mago4\Retail\TCPOS_Getting_Started
call convert_course Logistics\TCPOSPrimoAvvio-EN                                                        University_EN\Mago4\Retail\TCPOS_Getting_Started
call convert_course Logistics\TransazioniDiCassa-EN                                                     University_EN\MagoCloud\Retail\Cash_Transaction
call convert_course "Logistics\Transferimenti Tra Punti Vendita"                                        University_IT\Mago4\Retail\InterStore_Movement_Documents /F
call convert_course "Logistics\Transferimenti Tra Punti Vendita -EN"                                    University_EN\Mago4\Retail\InterStore_Movement_Documents /F
call convert_course "Logistics\VisibilitàTCPOS"                                                         University_IT\Mago4\Retail\TCPOS_Visibility /F
call convert_course "Logistics\VisibilitàTCPOS-EN"                                                      University_EN\Mago4\Retail\TCPOS_Visibility /F
call convert_course MigrazioneMago4\MigrazioneMago4                                                     University_IT\Mago4\TB_Studio\Mago4_Migration
call convert_course MyMagoStudio\MMS_For_Power_User                                                     University_IT\Mago4\TB_Studio\MMS_For_Power_User
call convert_course Produzione\Configuratore                                                            University_IT\Mago4\Manufacturing\Configurator
call convert_course Produzione\Configuratore-CL-EN                                                      University_EN\MagoCloud\Manufacturing\Configurator
call convert_course Produzione\ConfiguratoreEN                                                          University_EN\Mago4\Manufacturing\Configurator
call convert_course Produzione\CriteriValorizzazionePuntuale\FIFOAScattiEsempiPraticiDiProduzione       University_IT\Mago4\Manufacturing\SingleStepFIFOPracticalExamples
call convert_course Produzione\CriteriValorizzazionePuntualeEN\WAPProduzioneEN                          University_IT\Mago4\Manufacturing\WAP_In_Manufacturing
call convert_course Produzione\DistintaBase-CL-EN\LaDistintaBase-CL-EN                                  University_EN\MagoCloud\Manufacturing\Bill_Of_Materials
call convert_course Produzione\DistintaBase-CL-EN\LaProduzione-CL-EN                                    University_EN\MagoCloud\Manufacturing\Bill_Of_Materials_Production
call convert_course Produzione\DistintaBase-CL-EN\LaProduzioneDaiDocumentiDiVendita-CL-EN               University_EN\MagoCloud\Manufacturing\Production_Through_Sales_Documents
call convert_course Produzione\DistintaBase-CL-EN\LeProcedure-CL-EN                                     University_EN\MagoCloud\Manufacturing\Bill_Of_Materials_Procedures
call convert_course Produzione\DistintaBase-CL\LaDistintaBase-CL                                        University_IT\MagoCloud\Manufacturing\Bill_Of_Materials
call convert_course Produzione\DistintaBase-CL\LaProduzione-CL                                          University_IT\MagoCloud\Manufacturing\Bill_Of_Materials_Production                   
call convert_course Produzione\DistintaBase-CL\LaProduzioneDaiDocumentiDiVendita-CL                     University_IT\MagoCloud\Manufacturing\Production_Through_Sales_Documents
call convert_course Produzione\DistintaBase-CL\LeProcedure-CL                                           University_IT\MagoCloud\Manufacturing\Bill_Of_Materials_Procedures
call convert_course Produzione\DistintaBase-CL\TestFinaliDistintaBase                                   University_IT\MagoCloud\Manufacturing\Bill_Of_Materials_Final_Tests
call convert_course Produzione\DistintaBase\LaDistintaBase                                              University_IT\Mago4\Manufacturing\Bill_Of_Materials
call convert_course Produzione\DistintaBase\LaProduzione                                                University_IT\Mago4\Manufacturing\Bill_Of_Materials_Production
call convert_course Produzione\DistintaBase\LaProduzioneDaiDocumentiDiVendita                           University_IT\Mago4\Manufacturing\Production_Through_Sales_Documents
call convert_course Produzione\DistintaBase\LeProcedure                                                 University_IT\Mago4\Manufacturing\Bill_Of_Materials_Procedures
call convert_course Produzione\DistintaBase\TestFinaliDistintaBase                                      University_IT\Mago4\Manufacturing\Bill_Of_Materials_Final_Tests
call convert_course Produzione\DistintaBaseEN\LaDistintaBaseEN                                          University_EN\Mago4\Manufacturing\Bill_Of_Materials
call convert_course Produzione\DistintaBaseEN\LaProduzioneDaiDocumentiDiVenditaEN                       University_EN\Mago4\Manufacturing\Production_Through_Sales_Documents
call convert_course Produzione\DistintaBaseEN\LaProduzioneEN                                            University_EN\Mago4\Manufacturing\Bill_Of_Materials_Production
call convert_course Produzione\DistintaBaseEN\LeProcedureEN                                             University_EN\Mago4\Manufacturing\Bill_Of_Materials_Procedures
call convert_course Produzione\Enterprise\Disegni                                                       University_IT\Mago4\Manufacturing\Drawings
call convert_course Produzione\Enterprise\ECO                                                           University_IT\Mago4\Manufacturing\Eco
call convert_course Produzione\Enterprise\Kanban                                                        University_IT\Mago4\Manufacturing\Kanban
call convert_course "Produzione\Enterprise\Pannello di controllo"                                       University_IT\Mago4\Manufacturing\Control_Panel
call convert_course Produzione\EnterpriseEN\DisegniEN                                                   University_EN\Mago4\Manufacturing\Drawings
call convert_course Produzione\EnterpriseEN\ECOEN                                                       University_EN\Mago4\Manufacturing\Eco
call convert_course Produzione\EnterpriseEN\KanbanEN                                                    University_EN\Mago4\Manufacturing\Kanban
call convert_course Produzione\EnterpriseEN\PannelloDiControlloEN                                       University_EN\Mago4\Manufacturing\Control_Panel
call convert_course Produzione\Enterprise-CL-EN\ECO-CL-EN                                               University_EN\MagoCloud\Manufacturing\Eco
call convert_course Produzione\Enterprise-CL-EN\Kanban-CL-EN                                            University_EN\MagoCloud\Manufacturing\Kanban
call convert_course "Produzione\Pianificazione\La pianificazione avanzata MRP"                          University_IT\Mago4\Manufacturing\MRP
call convert_course Produzione\Pianificazione\Stabilimenti                                              University_EN\Mago4\Manufacturing\Factories
call convert_course Produzione\PianificazioneEN\MRP                                                     University_EN\Mago4\Manufacturing\MRP
call convert_course Produzione\PianificazioneEN\StabilimentiEN                                          University_EN\Mago4\Manufacturing\Factories
call convert_course Produzione\ProduzioneAvanzata-CL-EN\ProduzioneAvanzataLaGestioneDeiLotti-CL-EN      University_EN\MagoCloud\Manufacturing\Adv_Prod_Lots_Management
call convert_course Produzione\ProduzioneAvanzata-CL\ProduzioneAvanzataLaDistintaBase-CL                University_IT\MagoCloud\Manufacturing\Adv_Prod_Bill_Of_Materials
call convert_course Produzione\ProduzioneAvanzata\Attrezzi                                              University_IT\Mago4\Manufacturing\Tools_Management
call convert_course Produzione\ProduzioneAvanzata\ProduzioneAvanzataIlContoLavoro                       University_IT\Mago4\Manufacturing\Adv_Prod_Subcontracting 
call convert_course Produzione\ProduzioneAvanzata\ProduzioneAvanzataLaDistintaBase                      University_IT\Mago4\Manufacturing\Adv_Prod_Bill_Of_Materials
call convert_course Produzione\ProduzioneAvanzata\ProduzioneAvanzataLaGestioneDeiLotti                  University_IT\Mago4\Manufacturing\Adv_Prod_Lots_Management
call convert_course Produzione\ProduzioneAvanzata\ProduzioneAvanzataLaProduzione                        University_IT\Mago4\Manufacturing\Adv_Prod_Materials_Production
call convert_course Produzione\ProduzioneAvanzata\ProduzioneAvanzataLeProcedureDiProduzione             University_IT\Mago4\Manufacturing\Adv_Prod_Materials_Procedures
call convert_course Produzione\ProduzioneAvanzataEN\AttrezziEN                                          University_EN\Mago4\Manufacturing\Tools_Management
call convert_course Produzione\ProduzioneAvanzataEN\ProduzioneAvanzataIlContoLavoroEN                   University_EN\Mago4\Manufacturing\Adv_Prod_Subcontracting 
call convert_course Produzione\ProduzioneAvanzataEN\ProduzioneAvanzataLaDistintaBaseEN                  University_EN\Mago4\Manufacturing\Adv_Prod_Bill_Of_Materials
call convert_course Produzione\ProduzioneAvanzataEN\ProduzioneAvanzataLaGestioneDeiLottiEN              University_EN\Mago4\Manufacturing\Adv_Prod_Lots_Management
call convert_course Produzione\ProduzioneAvanzataEN\ProduzioneAvanzataLaProduzioneEN                    University_EN\Mago4\Manufacturing\Adv_Prod_Materials_Production
call convert_course Produzione\ProduzioneAvanzataEN\ProduzioneAvanzataLeProcedureDiProduzioneEN         University_EN\Mago4\Manufacturing\Adv_Prod_Materials_Procedures
call convert_course "Produzione\ProduzioneBase - CL\ProduzioneBaseLaDistintaBase-CL"                    University_IT\MagoCloud\Manufacturing\Base_Prod_Bill_Of_Materials
call convert_course Produzione\ProduzioneBase-CL-EN\ProduzioneBaseIlContoLavoro-CL-EN                   University_EN\MagoCloud\Manufacturing\Base_Prod_Subcontracting /F
call convert_course Produzione\ProduzioneBase-CL-EN\ProduzioneBaseLaDistintaBase-CL-EN                  University_EN\MagoCloud\Manufacturing\Base_Prod_Bill_Of_Materials
call convert_course Produzione\ProduzioneBase-CL-EN\ProduzioneBaseLaPianificazioneProduzione-CL-EN      University_EN\MagoCloud\Manufacturing\Base_Prod_Planning
call convert_course Produzione\ProduzioneBase-CL-EN\ProduzioneBaseLaProduzione-CL-EN                    University_EN\MagoCloud\Manufacturing\Base_Production
call convert_course Produzione\ProduzioneBase-CL-EN\ProduzioneBaseLeProcedureDiManutenzione-CL-EN       University_EN\MagoCloud\Manufacturing\Base_Prod_Maintenance_Procedures
call convert_course Produzione\ProduzioneBase\ProduzioneBaseIlContoLavoro                               University_IT\Mago4\Manufacturing\Base_Prod_Subcontracting
call convert_course Produzione\ProduzioneBase\ProduzioneBaseLaDistintaBase                              University_IT\Mago4\Manufacturing\Base_Prod_Bill_Of_Materials
call convert_course Produzione\ProduzioneBase\ProduzioneBaseLaPianificazioneDellaProduzione             University_IT\Mago4\Manufacturing\Base_Prod_Planning
call convert_course Produzione\ProduzioneBase\ProduzioneBaseLaProduzione                                University_IT\Mago4\Manufacturing\Base_Production
call convert_course Produzione\ProduzioneBase\ProduzioneBaseLeProcedureDiManutenzione                   University_IT\Mago4\Manufacturing\Base_Prod_Maintenance_Procedures
call convert_course Produzione\ProduzioneBaseEN\ProduzioneBaseIlContoLavoroEN                           University_EN\Mago4\Manufacturing\Base_Prod_Subcontracting
call convert_course Produzione\ProduzioneBaseEN\ProduzioneBaseLaDistintaBaseEN                          University_EN\Mago4\Manufacturing\Base_Prod_Bill_Of_Materials
call convert_course Produzione\ProduzioneBaseEN\ProduzioneBaseLaPianificazioneDellaProduzioneEN         University_EN\Mago4\Manufacturing\Base_Prod_Planning
call convert_course Produzione\ProduzioneBaseEN\ProduzioneBaseLaProduzioneEN                            University_EN\Mago4\Manufacturing\Base_Production
call convert_course Produzione\ProduzioneBaseEN\ProduzioneBaseLeProcedureDiManutenzioneEN               University_EN\Mago4\Manufacturing\Base_Prod_Maintenance_Procedures
call convert_course Produzione\RicettaAlimentare\RicettaAlimentare                                      University_IT\Mago4\Manufacturing\FoodRecipe
call convert_course Produzione\RicettaAlimentareEN                                                      University_EN\Mago4\Manufacturing\FoodRecipe
call convert_course Produzione\Varianti                                                                 University_IT\Mago4\Manufacturing\Variants
call convert_course Produzione\VariantiEN                                                               University_EN\Mago4\Manufacturing\Variants
call convert_course Produzione\Varianti-CL-EN                                                           University_IT\MagoCloud\Manufacturing\Variants
call convert_course Produzione\WMS                                                                      University_IT\Mago4\Manufacturing\WMS_And_Production
call convert_course Produzione\WMSEN                                                                    University_EN\Mago4\Manufacturing\WMS_And_Production
call convert_course Visibility\LaVisibilita                                                             University_IT\Mago4\TB_Framework\Visibility
call convert_course Visibility\LaVisibilitaEN                                                           University_EN\Mago4\TB_Framework\Visibility

:skipToEnd

if exist errors.log (
    @echo.
    @echo Please check these problems:
    type errors.log
)
