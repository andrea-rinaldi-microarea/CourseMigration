@echo off
set ORIGIN=C:\eLearning4\courses
set DESTINATION=C:\working\courses\University

if exist errors.log del errors.log

@REM =============================== già controllati
call convert_course CGM\CGM                              University_IT\Mago4\Masters\CGM
call convert_course CGM\CGM_EN                           University_EN\Mago4\Masters\CGM
call convert_course Financial\Anagrafiche                University_IT\Mago4\Masters\Masters
call convert_course Financial\AnagraficheEN              University_EN\Mago4\Masters\Masters
call convert_course Financial\AnagraficheRO              University_RO\Mago4\Masters\Masters
call convert_course Financial\Anagrafiche_CL             University_IT\MagoCloud\Masters\Masters
call convert_course Financial\Anagrafiche_CL_EN          University_EN\MagoCloud\Masters\Masters
call convert_course Financial\Anagrafiche_CL_RO          University_RO\MagoCloud\Masters\Masters

call convert_course Financial\AmazonDSP                       University_IT\MagoCloud\Financial\AmazonDSP
@REM call convert_course Financial\AssestamentiAutomatici     University_IT\Mago4\Financial\AccrualDeferrals
@REM call convert_course Financial\BilanciConsolidati         University_IT\Mago4\Financial\Multicompany_Balances
@REM call convert_course Financial\CespitiAmmortamenti        University_IT\Mago4\Financial\Fixed_Assets_Depreciations
@REM call convert_course Financial\CespitiAnagrafiche         University_IT\Mago4\Financial\Fixed_Assets_Masters
@REM call convert_course Financial\CespitiDismissioni         University_IT\Mago4\Financial\Fixed_Assets_Disposal
@REM call convert_course Financial\CespitiMovimenti           University_IT\Mago4\Financial\Fixed_Assets_Entries

@REM call convert_course Financial\ChiusureAperture                  University_IT\Mago4\Financial\Opening_Closing
@REM call convert_course Financial\ChiusureApertureEN                University_EN\Mago4\Financial\Opening_Closing
@REM call convert_course Financial\ChiusureApertureRO                University_RO\Mago4\Financial\Opening_Closing
@REM call convert_course Financial\ChiusureAperture_CL               University_IT\MagoCloud\Financial\Opening_Closing
@REM call convert_course Financial\ChiusureAperture_CL_EN            University_EN\MagoCloud\Financial\Opening_Closing
@REM call convert_course Financial\ChiusureAperture_CL_RO            University_RO\MagoCloud\Financial\Opening_Closing
@REM call convert_course Financial\EffettiEMandati                   University_IT\Mago4\Financial\Bills_and_Payment_Orders
@REM call convert_course Financial\EffettiEMandatiEN                 University_EN\Mago4\Financial\Bills_and_Payment_Orders
@REM call convert_course Financial\EffettiEMandatiRO                 University_RO\Mago4\Financial\Bills_and_Payment_Orders
@REM call convert_course Financial\EffettiEMandati_CL                University_IT\MagoCloud\Financial\Bills_and_Payment_Orders
@REM call convert_course Financial\EffettiEMandati_CL_EN             University_EN\MagoCloud\Financial\Bills_and_Payment_Orders
@REM call convert_course Financial\EffettiEMandati_CL_RO             University_RO\MagoCloud\Financial\Bills_and_Payment_Orders
@REM call convert_course Financial\ElenchiIntrastat                  University_IT\Mago4\Financial\Intrastat
@REM call convert_course Financial\Enasarco                          University_IT\Mago4\Financial\Enasarco
@REM call convert_course Financial\FatturazioneElettronica           University_IT\Mago4\Financial\Electronic_Invoices
@REM call convert_course Financial\FatturazioneElettronicaAttiva     University_IT\Mago4\Financial\Sales_Electronic_Invoices
@REM call convert_course Financial\FatturazioneElettronicaAttiva_CL  University_IT\MagoCloud\Financial\Sales_Electronic_Invoices
@REM call convert_course Financial\FatturazioneElettronicaPassiva    University_IT\Mago4\MDC\Purchase_Electronic_Invoices /M

@REM call convert_course Financial\FatturazioneElettronicaPassiva_CL     University_IT\MagoCloud\MDC\Purchase_Electronic_Invoices
@REM call convert_course Financial\FatturazioneElettronica_Autofatture   University_IT\Mago4\MDC\Self_Electronic_Invoices
@REM call convert_course Financial\FatturazioneElettronica_Integrazioni  University_IT\Mago4\MDC\Electronic_Invoices_Integrations
@REM call convert_course Financial\LocalizzazioniFinancialRomaniaEN      University_EN\Mago4\Financial\Romanian_Localizations
@REM call convert_course Financial\LocalizzazioniFinancialRomaniaRO      University_RO\Mago4\Financial\Romanian_Localizations
@REM call convert_course Financial\MovimentiContabili                    University_IT\Mago4\Financial\Accounting_Entries
@REM call convert_course Financial\MovimentiContabiliEN                  University_EN\Mago4\Financial\Accounting_Entries
@REM call convert_course Financial\MovimentiContabiliRO                  University_RO\Mago4\Financial\Accounting_Entries
@REM call convert_course Financial\MovimentiContabili_CL                 University_IT\MagoCloud\Financial\Accounting_Entries
@REM call convert_course Financial\MovimentiContabili_CL_EN              University_EN\MagoCloud\Financial\Accounting_Entries
@REM call convert_course Financial\MovimentiContabili_CL_RO              University_RO\MagoCloud\Financial\Accounting_Entries
@REM call convert_course Financial\Partite                               University_IT\Mago4\Financial\AP_AR
@REM call convert_course Financial\PartiteEN                             University_EN\Mago4\Financial\AP_AR
@REM call convert_course Financial\PartiteRO                             University_RO\Mago4\Financial\AP_AR
@REM call convert_course Financial\Partite_CL                            University_IT\MagoCloud\Financial\AP_AR
@REM call convert_course Financial\Partite_CL_EN                         University_EN\MagoCloud\Financial\AP_AR
@REM call convert_course Financial\Partite_CL_RO                         University_RO\MagoCloud\Financial\AP_AR
@REM call convert_course Financial\Percipienti                           University_IT\Mago4\Financial\Payees
@REM call convert_course Financial\StampeFiscali                         University_IT\Mago4\Financial\Fiscal_Printouts
@REM call convert_course Financial\StampeFiscaliEN                       University_EN\Mago4\Financial\Fiscal_Printouts
@REM call convert_course Financial\StampeFiscaliRO                       University_RO\Mago4\Financial\Fiscal_Printouts
@REM call convert_course Financial\StampeFiscali_CL                      University_IT\MagoCloud\Financial\Fiscal_Printouts
@REM call convert_course Financial\StampeFiscali_CL_EN                   University_EN\MagoCloud\Financial\Fiscal_Printouts
@REM call convert_course Financial\StampeFiscali_CL_RO                   University_RO\MagoCloud\Financial\Fiscal_Printouts

@REM call convert_course IMago\Gadget                             University_IT\Mago4\CRM\Gadget
@REM call convert_course IMago\InstallazioneComponenti            University_IT\Mago4\CRM\Components_Installation
@REM call convert_course IMago\Posta                              University_IT\Mago4\CRM\Mail
@REM call convert_course IMago\ProcessoDiSincronizzazione         University_IT\Mago4\CRM\Synchronization_Process
@REM call convert_course IMago\ProcessoDiValidazione              University_IT\Mago4\CRM\Validation_Process
@REM call convert_course IMago\SincroInfMago                      University_IT\Mago4\CRM\Infinity_Mago_Synchronization
@REM call convert_course IMago\SsoMappatura                       University_IT\Mago4\CRM\Mapping_SSO
@REM call convert_course IMago\WizardDiConfigurazione             University_IT\Mago4\CRM\Configuration_Wizard

@REM call convert_course "Logistics\Articoli e relativi dati anagrafici"         University_IT\Mago4\Logistics\Items_Master_Data
@REM call convert_course "Logistics\Articoli e relativi dati anagrafici - EN"    University_EN\Mago4\Logistics\Items_Master_Data
@REM call convert_course "Logistics\Articoli e relativi dati anagrafici-CL"      University_IT\MagoCloud\Logistics\Items_Master_Data
@REM Logistics\ArticoliAcquisizione-EN
@REM call convert_course "Logistics\ArticoliERelativiDatiAnagrafici-CL EN"       University_EN\MagoCloud\Logistics\Items_Master_Data
@REM call convert_course Logistics\ArticoliERelativiDatiAnagrafici-CL-RO         University_RO\MagoCloud\Logistics\Items_Master_Data
@REM call convert_course Logistics\Barcode-CL-EN                                 University_EN\MagoCloud\Logistics\Barcode
@REM call convert_course Logistics\Barcode-EN                                    University_EN\Mago4\Logistics\Barcode
@REM call convert_course "Logistics\CodiceParlante - CL - EN"                    University_EN\MagoCloud\Logistics\Smart_Codes
@REM call convert_course Logistics\CodiceParlante-CL-RO                          University_RO\MagoCloud\Logistics\Smart_Codes
@REM Logistics\ComeTrasferireMerceTraPV-EN
@REM Logistics\ConfigurazioneInizialeMagoKonaKart
@REM Logistics\ConfigurazioneInizialeMagoKonaKart_ENG
@REM call convert_course Logistics\Convenzioni-EN                                University_EN\Mago4\Retail\Subsidies
@REM Logistics\DatiAlimentari-EN
@REM Logistics\DESADV-EN
@REM Logistics\EDI-EN
@REM Logistics\EtichettePrezzoVendita-EN
@REM call convert_course Logistics\EvasioneInterattivaOrdiniCliente              University_IT\Mago4\Sales\Sale_Orders_Fulfillment
@REM call convert_course Logistics\FatturazioneElettronicaGestioneAsincrona      University_IT\Mago4\MDC\Asynchronous_Electronic_Invoices
@REM @REM call convert_course Logistics\FatturazioneElettronicaPassivaAvanzata        University_IT\Mago4\MDC\Advanced_Purchase_Electronic_Invoices
@REM call convert_course Logistics\FatturazioneElettronicaPassivaAvanzataNEW     University_IT\Mago4\MDC\Advanced_Purchase_Electronic_Invoices
@REM call convert_course "Logistics\FormatiUM - EN"                              University_EN\Mago4\Retail\UoM_Sizes
@REM call convert_course Logistics\GestioneVouchers-EN                           University_EN\Mago4\Retail\Vouchers
@REM call convert_course Logistics\GliArticoliEquivalenti                        University_IT\Mago4\Logistics\Substitute_Items
@REM call convert_course Logistics\GliArticoliEquivalenti-CL-EN                  University_EN\MagoCloud\Logistics\Substitute_Items
@REM call convert_course Logistics\GliArticoliEquivalenti-EN                     University_EN\Mago4\Logistics\Substitute_Items
@REM call convert_course Logistics\IDatiClienteArticoloFornitoreArticolo         University_IT\Mago4\Logistics\Item_Customers_Suppliers
@REM call convert_course Logistics\IDatiClienteArticoloFornitoreArticolo-CL-EN   University_EN\MagoCloud\Logistics\Item_Customers_Suppliers
@REM call convert_course Logistics\IDatiClienteArticoloFornitoreArticolo-CL-RO   University_RO\MagoCloud\Logistics\Item_Customers_Suppliers
@REM call convert_course Logistics\IDatiClienteArticoloFornitoreArticolo-EN      University_EN\Mago4\Logistics\Item_Customers_Suppliers


@REM call convert_course Logistics\IDocumentiDelCicloAttivo              University_IT\Mago4\Sales\Sale_Documents
@REM call convert_course Logistics\IDocumentiDelCicloAttivo-CL-EN        University_EN\MagoCloud\Sales\Sale_Documents
@REM Logistics\IDocumentiDelCicloAttivo-CL-IT
@REM call convert_course Logistics\IDocumentiDelCicloAttivo-CL-RO        University_RO\MagoCloud\Sales\Sale_Documents
@REM call convert_course Logistics\IDocumentiDelCicloAttivo-EN           University_EN\Mago4\Sales\Sale_Documents
@REM call convert_course Logistics\IDocumentiDelCicloPassivo             University_IT\Mago4\Purchases\Purchase_Documents
@REM call convert_course Logistics\IDocumentiDelCicloPassivo-CL-IT       University_IT\MagoCloud\Purchases\Purchase_Documents
@REM call convert_course Logistics\IlCodiceParlante                      University_IT\Mago4\Logistics\Smart_Codes
@REM call convert_course Logistics\IlCodiceParlante-EN                   University_EN\Mago4\Logistics\Smart_Codes
@REM call convert_course Logistics\IlDocumentoDiTrasporto                University_IT\Mago4\Sales\Delivery_Notes
@REM call convert_course Logistics\IlDocumentoDiTrasporto-CL-IT          University_IT\MagoCloud\Sales\Delivery_Notes
@REM call convert_course Logistics\IlDocumentoDiTrasporto-CL-RO          University_RO\MagoCloud\Sales\Delivery_Notes
@REM call convert_course Logistics\IlDocumentoDiTrasporto-EN             University_EN\Mago4\Sales\Delivery_Notes
@REM call convert_course Logistics\IMovimentiAgenti                      University_IT\Mago4\Sales\Salespeople_Entries
@REM Logistics\InStoreApp-GoodReceipt-EN
@REM Logistics\InStoreApp-InformazioniArticolo-EN
@REM Logistics\InStoreApp-Inventario-EN
@REM Logistics\InStoreApp-InventoryTransaction-EN
@REM Logistics\InStoreApp-OrdineAFornitore-EN
@REM Logistics\InStoreApp-TrasferimentoTraDepositi-EN
@REM Logistics\InStoreAppIntroduction-EN
@REM Logistics\InStoreAppTrasferimentiTraPuntiVendita-EN
@REM call convert_course Logistics\IntroduzioneMagoCloud                 University_IT\MagoCloud\Masters\MagoCloud_Introduction
@REM call convert_course Logistics\IntroduzioneMagoCloudEN               University_EN\MagoCloud\Masters\MagoCloud_Introduction
@REM call convert_course Logistics\IntroduzioneMagoCloudRO               University_RO\MagoCloud\Masters\MagoCloud_Introduction
@REM call convert_course Logistics\KKPrimoAvvio                          University_IT\Mago4\Retail\KonaKart_Getting_Started
@REM call convert_course Logistics\KKPrimoAvvio-EN                       University_EN\Mago4\Retail\KonaKart_Getting_Started
@REM call convert_course Logistics\LaChiusuraDiMagazzino                 University_IT\Mago4\Logistics\Inventory_Closing
@REM call convert_course Logistics\LaChiusuraDiMagazzino-CL              University_IT\MagoCloud\Logistics\Inventory_Closing
@REM call convert_course Logistics\LaChiusuraDiMagazzino-CL-EN           University_EN\MagoCloud\Logistics\Inventory_Closing
@REM call convert_course Logistics\LaChiusuraDiMagazzino-CL-RO           University_RO\MagoCloud\Logistics\Inventory_Closing
@REM call convert_course Logistics\LaChiusuraDiMagazzino-EN              University_EN\Mago4\Logistics\Inventory_Closing
@REM call convert_course Logistics\LaConfigurazioneDiUnDepositoDiWMS     University_IT\Mago4\Logistics\WMS_Storage_Configuration
@REM Logistics\LaConfigurazioneDiUnDepositoDiWMS-CL-IT
@REM call convert_course Logistics\LaConfigurazioneDiUnDepositoDiWMS-EN  University_EN\Mago4\Logistics\WMS_Storage_Configuration
@REM call convert_course Logistics\LaFatturaAccompagnatoria              University_IT\Mago4\Sales\Accompanying_Invoice
@REM call convert_course Logistics\LaFatturaImmediata                    University_IT\Mago4\Sales\Sale_Invoice
@REM call convert_course Logistics\LaFatturaImmediata-CL-IT              University_IT\MagoCloud\Sales\Sale_Invoice
@REM call convert_course Logistics\LaFatturaImmediata-CL-RO              University_RO\MagoCloud\Sales\Sale_Invoice
@REM call convert_course Logistics\LaFatturaProforma                     University_IT\Mago4\Sales\ProForma_Invoice

REM call convert_course Logistics\LaFatturazioneDifferitaDDT                University_IT\Mago4\Sales\Delivery_Notes_Deferred_Invoicing
REM call convert_course Logistics\LaFatturazioneDifferitaDDT-CL             University_IT\MagoCloud\Sales\Delivery_Notes_Deferred_Invoicing
REM call convert_course Logistics\LaFatturazioneDifferitaDDT-CL-RO          University_RO\MagoCloud\Sales\Delivery_Notes_Deferred_Invoicing
REM call convert_course Logistics\LaFatturazioneDifferitaDDT-EN             University_EN\Mago4\Sales\Delivery_Notes_Deferred_Invoicing
REM call convert_course Logistics\LaGestioneDeiLotti                        University_IT\Mago4\Logistics\Lots_Management
REM call convert_course Logistics\LaGestioneDeiLotti-CL-EN                  University_EN\MagoCloud\Logistics\Lots_Management
@REM Logistics\LaGestioneDeiLotti-CL-IT
REM call convert_course Logistics\LaGestioneDeiLotti-CL-RO                  University_RO\MagoCloud\Logistics\Lots_Management
REM call convert_course Logistics\LaGestioneDeiLotti-EN                     University_EN\Mago4\Logistics\Lots_Management
REM call convert_course Logistics\LaGestioneMatricole                       University_IT\Mago4\Logistics\Serial_Number_Management
REM call convert_course Logistics\LaGestioneVarianti                        University_IT\Mago4\Logistics\Variants_Management
REM call convert_course Logistics\LaGestioneVarianti-EN                     University_EN\Mago4\Logistics\Variants_Management
REM call convert_course Logistics\LaManutenzioneDeiMovimenti                University_IT\Mago4\Logistics\Inventory_Entries_Maintenance
REM call convert_course Logistics\LaManutenzioneDeiMovimenti-CL-EN          University_EN\MagoCloud\Logistics\Inventory_Entries_Maintenance
@REM Logistics\LaManutenzioneDeiMovimenti-CL-IT
REM call convert_course Logistics\LaManutenzioneDeiMovimenti-CL-RO          University_RO\MagoCloud\Logistics\Inventory_Entries_Maintenance
REM call convert_course Logistics\LaManutenzioneDeiMovimenti-EN             University_EN\Mago4\Logistics\Inventory_Entries_Maintenance
REM call convert_course Logistics\LaMovimentazioneDeiLotti                  University_IT\Mago4\Logistics\Lots_In_Documents
@REM Logistics\LaMovimentazionedeiLotti-CL-IT
REM call convert_course Logistics\LaMovimentazioneDeiLotti-EN               University_EN\Mago4\Logistics\Lots_In_Documents
REM call convert_course Logistics\LAnagraficaAgenti                         University_IT\Mago4\Sales\Salespeople_Master
@REM Logistics\LAnagraficaAgenti-CL-IT
REM call convert_course Logistics\LaNotaDiCredito                           University_IT\Mago4\Sales\Credit_Notes
REM call convert_course Logistics\LaNotaDiCredito-EN                        University_EN\Mago4\Sales\Credit_Notes
REM call convert_course Logistics\LaRicevutaFiscale                         University_IT\Mago4\Sales\Fiscal_Receipt
REM call convert_course Logistics\LeProcedureAutomatiche                    University_IT\Mago4\Logistics\Lots_Automatic_Procedures
REM call convert_course Logistics\LeProcedureAutomatiche-EN                 University_EN\Mago4\Logistics\Lots_Automatic_Procedures
REM @REM call convert_course Logistics\LeProcedureStampaRegistra                 University_IT\Mago4\Sales\Print_And_Post_Procedures
@REM Logistics\LeProcedureStampaRegistra-CL-IT
REM call convert_course Logistics\LeProcedureStampaRegistra-Rev02           University_IT\Mago4\Sales\Print_And_Post_Procedures
REM call convert_course Logistics\LeProvvigioniNeiDocumentiDelCicloAttivo   University_IT\Mago4\Sales\Commissions_In_Sale_Documents
REM call convert_course Logistics\LeUnitaDiMisura                           University_IT\Mago4\Logistics\Units_Of_Measure
REM call convert_course Logistics\LeUnitaDiMisura-CL-EN                     University_EN\MagoCloud\Logistics\Units_Of_Measure
@REM Logistics\LeUnitaDiMisura-CL-IT
REM call convert_course Logistics\LeUnitaDiMisura-CL-RO                     University_RO\MagoCloud\Logistics\Units_Of_Measure
REM call convert_course Logistics\LeUnitaDiMisura-EN                        University_EN\Mago4\Logistics\Units_Of_Measure

@REM call convert_course Logistics\LOffertaACliente                              University_IT\Mago4\Sales\Customer_Quotation
@REM call convert_course Logistics\LOrdineDaCliente                              University_IT\Mago4\Sales\Sales_Order
@REM call convert_course Logistics\LOrdineDaCliente-CL                           University_IT\MagoCloud\Sales\Sales_Order
@REM call convert_course Logistics\LOrdineDaCliente-EN                           University_EN\Mago4\Sales\Sales_Order
@REM call convert_course Logistics\MovimentiDiCassa-EN                           University_EN\Mago4\Retail\Cash_Transaction
@REM call convert_course Logistics\MovimentiDiMagazzino                          University_IT\Mago4\Logistics\Inventory_Entries
@REM call convert_course Logistics\MovimentiDiMagazzino-CL                       University_IT\MagoCloud\Logistics\Inventory_Entries
@REM call convert_course Logistics\MovimentiDiMagazzino-CL-EN                    University_EN\MagoCloud\Logistics\Inventory_Entries
@REM call convert_course Logistics\MovimentiDiMagazzino-CL-RO                    University_RO\MagoCloud\Logistics\Inventory_Entries
@REM call convert_course Logistics\MovimentiDiMagazzino-EN                       University_EN\Mago4\Logistics\Inventory_Entries
@REM call convert_course Logistics\PosizionamentoDirettoWMS-EN                   University_EN\Mago4\Logistics\Good_Receipt_Direct_Putaway
@REM call convert_course Logistics\PrezziEScontiNelCicloAttivo                   University_IT\Mago4\Sales\Price_Discount_Polices
@REM call convert_course Logistics\PrezziEScontiNelCicloAttivo-CL-EN             University_EN\MagoCloud\Sales\Price_Discount_Polices
@REM Logistics\PrezziEScontiNelCicloAttivo-CL-IT
@REM call convert_course Logistics\PrezziEScontiNelCicloAttivo-CL-RO             University_RO\MagoCloud\Sales\Price_Discount_Polices
@REM call convert_course Logistics\PrezziEScontiNelCicloAttivo-EN                University_EN\Mago4\Sales\Price_Discount_Polices
@REM call convert_course Logistics\ProduttoriCategorieeTipi                      University_IT\Mago4\Logistics\Manufacturers_Categories_Types
@REM call convert_course Logistics\ProduttoriCategorieeTipi-EN                   University_EN\Mago4\Logistics\Manufacturers_Categories_Types
@REM Logistics\RiordinoPuntoVendita-EN
@REM call convert_course Logistics\RivalutazioneLifoFifo                         University_IT\Mago4\Logistics\Annual_LIFO_FIFO_Revaluation
@REM Logistics\Scontrini-EN
@REM call convert_course Logistics\TCPOSPrimoAvvio                               University_IT\Mago4\Retail\TCPOS_Getting_Started
@REM call convert_course Logistics\TCPOSPrimoAvvio-EN                            University_EN\Mago4\Retail\TCPOS_Getting_Started
@REM Logistics\TransazioniDiCassa-EN
@REM call convert_course "Logistics\Transferimenti Tra Punti Vendita"              University_IT\Mago4\Retail\InterStore_Movement_Documents
@REM call convert_course "Logistics\Transferimenti Tra Punti Vendita -EN"          University_EN\Mago4\Retail\InterStore_Movement_Documents
@REM call convert_course Logistics\VisibilitàTCPOS                               University_IT\Mago4\Retail\TCPOS_Visibility
@REM call convert_course Logistics\VisibilitàTCPOS-EN                            University_EN\Mago4\Retail\TCPOS_Visibility

@REM call convert_course MigrazioneMago4\MigrazioneMago4                             University_IT\Mago4\TB_Studio\Mago4_Migration

@REM =============================== da copntrollare

@REM call convert_course Produzione\Configuratore                                                            University_IT\Mago4\Manufacturing\Configurator
@REM call convert_course Produzione\Configuratore-CL-EN                                                      University_EN\MagoCloud\Manufacturing\Configurator
@REM call convert_course Produzione\ConfiguratoreEN                                                          University_EN\Mago4\Manufacturing\Configurator
@REM call convert_course Produzione\CriteriValorizzazionePuntuale\FIFOAScattiEsempiPraticiDiProduzione       University_IT\Mago4\Manufacturing\SingleStepFIFOPracticalExamples
@REM call convert_course Produzione\CriteriValorizzazionePuntualeEN\WAPProduzioneEN                          University_IT\Mago4\Manufacturing\WAP_In_Manufacturing
@REM call convert_course Produzione\DistintaBase\LaDistintaBase                                              University_IT\Mago4\Manufacturing\Bill_Of_Materials
@REM call convert_course Produzione\DistintaBase\LaProduzione                                                University_IT\Mago4\Manufacturing\Bill_Of_Materials_Production
@REM call convert_course Produzione\DistintaBase\LaProduzioneDaiDocumentiDiVendita                           University_IT\Mago4\Manufacturing\Production_Through_Sales_Documents
@REM call convert_course Produzione\DistintaBase\LeProcedure                                                 University_IT\Mago4\Manufacturing\Bill_Of_Materials_Procedures
@REM call convert_course Produzione\DistintaBase\TestFinaliDistintaBase                                      University_IT\Mago4\Manufacturing\Bill_Of_Materials_Final_Tests
@REM call convert_course Produzione\DistintaBase-CL\LaDistintaBase-CL                                        University_IT\MagoCloud\Manufacturing\Bill_Of_Materials
@REM call convert_course Produzione\DistintaBase-CL\LaProduzione-CL                                          University_IT\MagoCloud\Manufacturing\Bill_Of_Materials_Production                   
@REM call convert_course Produzione\DistintaBase-CL\LaProduzioneDaiDocumentiDiVendita-CL                     University_IT\MagoCloud\Manufacturing\Production_Through_Sales_Documents
@REM call convert_course Produzione\DistintaBase-CL\LeProcedure-CL                                           University_IT\MagoCloud\Manufacturing\Bill_Of_Materials_Procedures
@REM call convert_course Produzione\DistintaBase-CL\TestFinaliDistintaBase                                   University_IT\MagoCloud\Manufacturing\Bill_Of_Materials_Final_Tests
@REM call convert_course Produzione\DistintaBase-CL-EN\LaDistintaBase-CL-EN                                  University_EN\MagoCloud\Manufacturing\Bill_Of_Materials
@REM call convert_course Produzione\DistintaBase-CL-EN\LaProduzione-CL-EN                                    University_EN\MagoCloud\Manufacturing\Bill_Of_Materials_Production
@REM call convert_course Produzione\DistintaBase-CL-EN\LaProduzioneDaiDocumentiDiVendita-CL-EN               University_EN\MagoCloud\Manufacturing\Production_Through_Sales_Documents
@REM call convert_course Produzione\DistintaBase-CL-EN\LeProcedure-CL-EN                                     University_EN\MagoCloud\Manufacturing\Bill_Of_Materials_Procedures
@REM call convert_course Produzione\DistintaBaseEN\LaDistintaBaseEN                                          University_EN\Mago4\Manufacturing\Bill_Of_Materials
@REM call convert_course Produzione\DistintaBaseEN\LaProduzioneDaiDocumentiDiVenditaEN                       University_EN\Mago4\Manufacturing\Production_Through_Sales_Documents
@REM call convert_course Produzione\DistintaBaseEN\LaProduzioneEN                                            University_EN\Mago4\Manufacturing\Bill_Of_Materials_Production
@REM call convert_course Produzione\DistintaBaseEN\LeProcedureEN                                             University_EN\Mago4\Manufacturing\Bill_Of_Materials_Procedures


if exist errors.log (
    @echo.
    @echo Please check these problems:
    type errors.log
)