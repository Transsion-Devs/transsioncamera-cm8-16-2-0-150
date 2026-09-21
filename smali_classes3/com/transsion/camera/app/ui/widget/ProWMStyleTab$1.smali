.class Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$1;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->setupRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;Landroid/content/Context;IZ)V
    .registers 5

    .line 92
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$1;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-direct {p0, p2, p3, p4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    return-void
.end method


# virtual methods
.method public canScrollHorizontally()Z
    .registers 2

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$1;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmStylesLength(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result p0

    const/4 v0, 0x3

    if-le p0, v0, :cond_b

    const/4 p0, 0x1

    return p0

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public canScrollVertically()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method
