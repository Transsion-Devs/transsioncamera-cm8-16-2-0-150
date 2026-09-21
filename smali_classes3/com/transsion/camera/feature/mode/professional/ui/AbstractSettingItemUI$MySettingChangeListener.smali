.class Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;


# direct methods
.method public static synthetic $r8$lambda$c93h1Tguvr7i0xd4kQKQ0g6xF0g(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;->lambda$onStatusChanged$0(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0(Ljava/lang/String;)V
    .registers 3

    .line 248
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->doOnValueChanged(Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 243
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 246
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-virtual {v0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mCurrentEntryValue:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 247
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    iget-object p1, p1, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->mEntryView:Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;

    if-eqz p1, :cond_24

    .line 248
    new-instance v0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$MySettingChangeListener;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/IEntryView;->post(Ljava/lang/Runnable;)Z

    :cond_24
    return-void
.end method
