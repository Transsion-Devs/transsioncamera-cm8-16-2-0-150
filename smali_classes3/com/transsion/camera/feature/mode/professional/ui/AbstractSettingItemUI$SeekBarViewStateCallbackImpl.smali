.class public Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SeekBarViewStateCallbackImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;


# direct methods
.method protected constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDown()V
    .registers 1

    .line 162
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p0, :cond_9

    .line 163
    invoke-interface {p0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onSeekBarActionDown()V

    :cond_9
    return-void
.end method

.method public onActionUp()V
    .registers 2

    .line 169
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mItemCallBack:Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    .line 170
    invoke-interface {p0, v0, v0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISettingItemUI$IItemCallBack;->onSeekBarActionUp(ZZZ)V

    :cond_a
    return-void
.end method

.method public onDismissed(Ljava/lang/String;)V
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_16

    .line 154
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p0, :cond_16

    const/4 p1, 0x0

    .line 155
    invoke-interface {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->setSelected(Z)V

    :cond_16
    return-void
.end method

.method public onSeekBarValueChanged(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    .line 146
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 147
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$SeekBarViewStateCallbackImpl;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    const/4 p1, 0x1

    invoke-virtual {p0, p2, p1, p3}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->doOnValueChanged(Ljava/lang/String;ZZ)V

    :cond_12
    return-void
.end method
