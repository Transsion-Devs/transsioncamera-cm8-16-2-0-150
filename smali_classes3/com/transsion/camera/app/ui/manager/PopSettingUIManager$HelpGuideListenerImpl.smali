.class Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpGuideListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V
    .registers 2

    .line 462
    iput-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;Lcom/transsion/camera/app/ui/manager/PopSettingUIManager-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;-><init>(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 465
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fgetmFragmentListener(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 466
    iget-object p1, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-static {p1}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->-$$Nest$fgetmFragmentListener(Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;)Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/transsion/camera/app/common/IAppUIListener$IFragmentListener;->onHelpGuideClicked()V

    .line 468
    :cond_11
    iget-object p0, p0, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager$HelpGuideListenerImpl;->this$0:Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;

    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/manager/PopSettingUIManager;->onItemSelected()V

    return-void
.end method
