.class Lcom/transsion/camera/app/ui/ModePanelUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ModePanelUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ModePanelUI;


# direct methods
.method public static synthetic $r8$lambda$KMosj1eg9RR4K1mXEnGccEJkqtE(Lcom/transsion/camera/app/ui/ModePanelUI$1;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI$1;->lambda$onInflateFinished$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xqLJ0JbBTjUuxeeaZnn0_84iSXA(Lcom/transsion/camera/app/ui/ModePanelUI$1;Landroid/view/View;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/ModePanelUI$1;->lambda$onInflateFinished$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/app/ui/ModePanelUI;)V
    .registers 2

    .line 95
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onInflateFinished$0(Landroid/view/View;)V
    .registers 2

    .line 102
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmScrollConsumer(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    return-void
.end method

.method private synthetic lambda$onInflateFinished$1(Landroid/view/View;)V
    .registers 2

    .line 104
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmScrollConsumer(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/ui/ScrollConsumer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/ScrollConsumer;->hideModePanel()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 5

    .line 98
    invoke-static {}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p2

    const-string v0, "ModePanelUI onInflateFinished"

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmModePanelRootLayout(Lcom/transsion/camera/app/ui/ModePanelUI;)Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$id;->mode_panel_indicator_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 102
    new-instance p2, Lcom/transsion/camera/app/ui/ModePanelUI$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmModePanelRootLayout(Lcom/transsion/camera/app/ui/ModePanelUI;)Landroid/view/ViewGroup;

    move-result-object p1

    sget p2, Lcom/transsion/camera/R$id;->mode_panel_indicator_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 104
    new-instance p2, Lcom/transsion/camera/app/ui/ModePanelUI$1$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/transsion/camera/app/ui/ModePanelUI$1$$ExternalSyntheticLambda1;-><init>(Lcom/transsion/camera/app/ui/ModePanelUI$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$minitializeModePanelView(Lcom/transsion/camera/app/ui/ModePanelUI;)V

    .line 109
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePanelUI;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_50

    .line 110
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmModePanelRecycleViewAdapter(Lcom/transsion/camera/app/ui/ModePanelUI;)Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p2}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmCurrentModeName(Lcom/transsion/camera/app/ui/ModePanelUI;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/ui/mode/ModePanelRecycleViewAdapter;->updateCurrentMode(Ljava/lang/String;)V

    .line 112
    :cond_50
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-virtual {p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->refreshModePanelView()V

    .line 113
    iget-object p1, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmModePanelView(Lcom/transsion/camera/app/ui/ModePanelUI;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/app/ui/ModePanelUI$1;->this$0:Lcom/transsion/camera/app/ui/ModePanelUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/ModePanelUI;->-$$Nest$fgetmCacheEnable(Lcom/transsion/camera/app/ui/ModePanelUI;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method
