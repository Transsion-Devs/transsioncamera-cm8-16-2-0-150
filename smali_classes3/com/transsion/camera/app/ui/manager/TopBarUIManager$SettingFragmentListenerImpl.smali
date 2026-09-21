.class Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/TopBarUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingFragmentListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V
    .registers 2

    .line 633
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;Lcom/transsion/camera/app/ui/manager/TopBarUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 636
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmFragmentListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 637
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$fgetmFragmentListener(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;->onSettingClicked()V

    .line 639
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/TopBarUIManager$SettingFragmentListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/TopBarUIManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/manager/TopBarUIManager;->-$$Nest$monItemSelected(Lcom/transsion/camera/app/ui/manager/TopBarUIManager;)V

    return-void
.end method
