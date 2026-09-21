.class Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;-><init>(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 47
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    return-void

    .line 49
    :cond_6
    iget-object p1, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->-$$Nest$fgetmFragmentManager(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;)Landroid/app/FragmentManager;

    move-result-object v0

    iget-object p0, p0, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog$UIHandler;->this$0:Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->-$$Nest$fgetmTag(Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/transsion/camera/app/ui/widget/dialog/RotateDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
