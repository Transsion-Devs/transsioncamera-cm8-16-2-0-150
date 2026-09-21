.class Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/mode/more/MoreView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeChangedListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V
    .registers 2

    .line 1770
    iput-object p1, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;Lcom/transsion/camera/app/ui/mode/more/MoreView-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;-><init>(Lcom/transsion/camera/app/ui/mode/more/MoreView;)V

    return-void
.end method


# virtual methods
.method public onSwitchMode(Ljava/lang/String;)V
    .registers 5

    .line 1773
    invoke-static {}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSwitchMode, mIsEditMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v2}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 1774
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmIsEditMode(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmMoreViewShow(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmIsModeSwitching(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Z

    move-result v0

    if-eqz v0, :cond_37

    goto :goto_6a

    .line 1777
    :cond_37
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmClickModeIconListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1778
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmClickModeIconListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/transsion/camera/app/common/IAppUIListener$INotifyClickModeIconListener;->notifyClickModeIcon()V

    .line 1780
    :cond_48
    iget-object v0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmModeChangedListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 1781
    const-string v0, "com.transsion.camera.feature.mode.gopro.GoProModeEntry"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_61

    .line 1782
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object v0

    const-string v1, "click_mode_icon"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->recordEnterGoProModeOperation(Ljava/lang/String;)V

    .line 1784
    :cond_61
    iget-object p0, p0, Lcom/transsion/camera/app/ui/mode/more/MoreView$ModeChangedListenerImpl;->this$0:Lcom/transsion/camera/app/ui/mode/more/MoreView;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/mode/more/MoreView;->-$$Nest$fgetmModeChangedListener(Lcom/transsion/camera/app/ui/mode/more/MoreView;)Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;->onSwitchMode(Ljava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void
.end method
