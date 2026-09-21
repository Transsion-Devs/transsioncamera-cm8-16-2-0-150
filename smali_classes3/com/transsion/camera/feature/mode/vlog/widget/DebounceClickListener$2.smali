.class Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$2;
.super Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;->setOnclickListener(Landroid/view/View;Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(IZLandroid/view/View$OnClickListener;)V
    .registers 4

    .line 72
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$2;->val$listener:Landroid/view/View$OnClickListener;

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener;-><init>(IZLcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener-IA;)V

    return-void
.end method


# virtual methods
.method public doClick(Landroid/view/View;)V
    .registers 2

    .line 75
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/vlog/widget/DebounceClickListener$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {p0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method
