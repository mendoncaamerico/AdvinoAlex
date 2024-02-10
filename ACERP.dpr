program ACERP;

{$R *.dres}

uses
  System.StartUpCopy,
  FMX.Forms,
  acerp.view.index in 'src\View\acerp.view.index.pas' {PageIndex},
  acerp.view.router in 'src\View\Router\acerp.view.router.pas',
  acerp.view.page.home in 'src\View\Pages\Home\acerp.view.page.home.pas' {PageHome},
  acerp.view.page.layout in 'src\View\Pages\Layout\acerp.view.page.layout.pas' {PageLayout},
  acerp.view.components.sidebar in 'src\View\Components\SideBar\acerp.view.components.sidebar.pas' {ComponentSidebar: TFrame},
  acerp.services.Utils in 'src\Services\acerp.services.Utils.pas',
  acerp.view.components.cards in 'src\View\Components\cards\acerp.view.components.cards.pas' {ComponentCard: TFrame},
  acerp.view.components.cardsgraficos in 'src\View\Components\CardsGraficos\acerp.view.components.cardsgraficos.pas' {ComponentCardGraficos: TFrame},
  acerp.services.enums in 'src\Services\acerp.services.enums.pas',
  acerp.services.charts in 'src\Services\acerp.services.charts.pas',
  Chart4Delphi in 'Chart4Delphi.pas',
  acerp.services.chats.interfaces in 'src\Services\acerp.services.chats.interfaces.pas',
  acerp.view.page.pessoa in 'src\View\Pages\Pessoas\acerp.view.page.pessoa.pas' {PagePessoa},
  acerp.view.component.interfaces in 'src\View\Components\Edits\acerp.view.component.interfaces.pas',
  acerp.view.component.edit in 'src\View\Components\Edits\acerp.view.component.edit.pas' {ComponentEdit: TFrame},
  acerp.view.page.Login in 'src\View\Pages\Login\acerp.view.page.Login.pas' {PageLogin},
  acerp.view.component.editImage in 'src\View\Components\EditImage\acerp.view.component.editImage.pas' {ComponentEditImage: TFrame},
  acerp.view.Style in 'src\View\style\acerp.view.Style.pas',
  acerp.view.pageTables in 'src\View\Pages\Table\acerp.view.pageTables.pas' {PageTable},
  acerp.view.components.ExtendedTables in 'src\View\Components\Table\acerp.view.components.ExtendedTables.pas' {ComponentExtendedTables: TFrame},
  acerp.view.components.ListaTables in 'src\View\Components\ListaTabela\acerp.view.components.ListaTables.pas' {ComponentListaTables: TFrame},
  acerp.view.Style.State in 'src\View\style\acerp.view.Style.State.pas',
  acerp.view.page.Listapessoa in 'src\View\Pages\Pessoas\acerp.view.page.Listapessoa.pas' {ListaPessoa},
  acerp.view.components.ExtendedTable in 'src\View\Components\Table\acerp.view.components.ExtendedTable.pas' {ComponentExtendedTable: TFrame},
  acerp.view.Pages.MenuGenerico in 'src\View\Pages\MenuGeneric\acerp.view.Pages.MenuGenerico.pas' {PageMenuGenerico},
  acerp.view.components.Attributes.Interfaces in 'src\View\Components\Attributes\acerp.view.components.Attributes.Interfaces.pas',
  acerp.view.components.attributes.button in 'src\View\Components\Attributes\acerp.view.components.attributes.button.pas',
  acerp.view.components.buttons.style in 'src\View\Components\Button\acerp.view.components.buttons.style.pas',
  acerp.view.components.Button.Submenu in 'src\View\Components\Button\ButtonSubMenu\acerp.view.components.Button.Submenu.pas' {ComponentButtonSubMenu},
  acerp.view.components.Button in 'src\View\Components\Button\ButtonMenu\acerp.view.components.Button.pas' {ComponentButton: TFrame},
  acerp.view.components.Button003 in 'src\View\Components\Button\ButtonMenu\acerp.view.components.Button003.pas' {ComponentButton003: TFrame},
  acerp.resources.interfaces in 'src\Resources\acerp.resources.interfaces.pas',
  acerp.resources.impl.conexaofiredac in 'src\Resources\impl\acerp.resources.impl.conexaofiredac.pas',
  acerp.resources.impl.configuracao in 'src\Resources\impl\acerp.resources.impl.configuracao.pas',
  acerp.resources.impl.resource in 'src\Resources\impl\acerp.resources.impl.resource.pas',
  acerp.view.component.edit2 in 'src\View\Components\Edits\acerp.view.component.edit2.pas' {ComponentEdit2},
  acerp.view.component.editArea in 'src\View\Components\Edits\acerp.view.component.editArea.pas' {ComponentEditArea},
  acerp.view.page.empresa in 'src\View\Pages\Empresa\acerp.view.page.empresa.pas' {PageEmpresa},
  acerp.core.entities.empresavalidacadastro in 'src\Cor\acerp.core.entities.empresavalidacadastro.pas',
  acerp.model.entity.caixa in 'src\Model\Entity\acerp.model.entity.caixa.pas',
  acerp.model.entity.caixa.movimento in 'src\Model\Entity\acerp.model.entity.caixa.movimento.pas',
  acerp.model.entity.cartaobandeira in 'src\Model\Entity\acerp.model.entity.cartaobandeira.pas',
  acerp.model.entity.cest in 'src\Model\Entity\acerp.model.entity.cest.pas',
  acerp.model.entity.cfop in 'src\Model\Entity\acerp.model.entity.cfop.pas',
  acerp.model.entity.cidade in 'src\Model\Entity\acerp.model.entity.cidade.pas',
  acerp.model.entity.codigoanp in 'src\Model\Entity\acerp.model.entity.codigoanp.pas',
  acerp.model.entity.configuracao in 'src\Model\Entity\acerp.model.entity.configuracao.pas',
  acerp.services.connectfiredac in 'src\Services\acerp.services.connectfiredac.pas',
  acerp.controller.impl.caixa in 'src\Controller\impl\acerp.controller.impl.caixa.pas',
  acerp.controller.Interfaces in 'src\Controller\acerp.controller.Interfaces.pas',
  acerp.controller.impl.caixaMovimento in 'src\Controller\impl\acerp.controller.impl.caixaMovimento.pas',
  acerp.controller.impl.controller in 'src\Controller\impl\acerp.controller.impl.controller.pas',
  acerp.view.components.cardsgraficos2 in 'src\View\Components\CardsGraficos\acerp.view.components.cardsgraficos2.pas' {ComponentCardGraficos2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TPageIndex, PageIndex);
  //Application.CreateForm(TComponentCardGraficos2, ComponentCardGraficos2);
  Application.Run;
end.
