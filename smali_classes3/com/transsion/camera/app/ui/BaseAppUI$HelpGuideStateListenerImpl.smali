.class Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IFragmentStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/BaseAppUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HelpGuideStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 4315
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 1

    return-void
.end method

.method public onFragmentExitView()V
    .registers 2

    .line 4328
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$HelpGuideStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0xfd

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onFragmentResume()V
    .registers 1

    return-void
.end method
