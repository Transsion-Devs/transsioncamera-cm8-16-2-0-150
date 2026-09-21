.class Lcom/transsion/camera/app/ui/AbstractShutterUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/AbstractShutterUI;->inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/AbstractShutterUI;)V
    .registers 2

    .line 205
    iput-object p1, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInflateFinished(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .registers 4

    .line 208
    invoke-virtual {p3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    iget-object p0, p0, Lcom/transsion/camera/app/ui/AbstractShutterUI$1;->this$0:Lcom/transsion/camera/app/ui/AbstractShutterUI;

    invoke-virtual {p0, p1, p2, p3}, Lcom/transsion/camera/app/ui/AbstractShutterUI;->updateLayoutParams(Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method
