.class Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;
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
    name = "OnEditorFragmentStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/BaseAppUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V
    .registers 2

    .line 4347
    iput-object p1, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/BaseAppUI;Lcom/transsion/camera/app/ui/BaseAppUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;-><init>(Lcom/transsion/camera/app/ui/BaseAppUI;)V

    return-void
.end method


# virtual methods
.method public onFragmentDestroy()V
    .registers 2

    .line 4355
    iget-object v0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    iget-boolean v0, v0, Lcom/transsion/camera/app/ui/BaseAppUI;->mIsPaused:Z

    if-eqz v0, :cond_7

    return-void

    .line 4358
    :cond_7
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x56

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method

.method public onFragmentResume()V
    .registers 2

    .line 4350
    iget-object p0, p0, Lcom/transsion/camera/app/ui/BaseAppUI$OnEditorFragmentStateListenerImpl;->this$0:Lcom/transsion/camera/app/ui/BaseAppUI;

    const/16 v0, 0x69

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/ui/BaseAppUI;->notifyRawActionToAppUI(I)V

    return-void
.end method
