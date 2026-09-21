.class Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter$1;
.super Landroid/view/ViewOutlineProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->onBindViewHolder(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter$1;->this$1:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 151
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter$1;->this$1:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab$MyAdapter;->this$0:Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;->-$$Nest$fgetmRadius(Lcom/transsion/camera/app/ui/widget/ProWMStyleTab;)I

    move-result p0

    int-to-float v5, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
