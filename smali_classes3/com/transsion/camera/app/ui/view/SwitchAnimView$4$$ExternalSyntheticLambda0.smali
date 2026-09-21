.class public final synthetic Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;

.field public final synthetic f$1:Landroid/os/Message;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;Landroid/os/Message;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;

    iput-object p2, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda0;->f$1:Landroid/os/Message;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4$$ExternalSyntheticLambda0;->f$1:Landroid/os/Message;

    check-cast p1, Landroid/widget/ImageView;

    invoke-static {v0, p0, p1}, Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;->$r8$lambda$B_o789PQegQYAgumE2HGTIDBTZ4(Lcom/transsion/camera/app/ui/view/SwitchAnimView$4;Landroid/os/Message;Landroid/widget/ImageView;)V

    return-void
.end method
