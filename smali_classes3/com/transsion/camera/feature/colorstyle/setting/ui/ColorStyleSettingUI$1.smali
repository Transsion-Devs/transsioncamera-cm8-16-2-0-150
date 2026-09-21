.class Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;


# direct methods
.method public static synthetic $r8$lambda$55THAarkuI5pv1kdBvmf2uvZvnw(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->lambda$onStatusChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V
    .registers 2

    .line 135
    iput-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0()V
    .registers 1

    .line 149
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$mhideColorStyleSettingUI(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 135
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 138
    invoke-static {}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmColorStyleSetting(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    if-nez v0, :cond_32

    .line 140
    invoke-static {}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$sfgetTAG()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "onStatusChanged mColorStyleSetting is null"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_32
    iget-object v0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmColorStyleSetting(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-virtual {v1, p1, p2}, Lcom/transsion/camera/feature/colorstyle/setting/ui/AbstractColorStyleSettingUI;->getColorStyleValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 144
    const-string v0, "key_super_definition"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    const-string p1, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_83

    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmColorStyleUIShown(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Z

    move-result p1

    if-eqz p1, :cond_83

    .line 145
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    if-ne p1, p2, :cond_6d

    .line 146
    iget-object p0, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$mhideColorStyleSettingUI(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)V

    return-void

    .line 148
    :cond_6d
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmEntryRootView(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_83

    .line 149
    iget-object p1, p0, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;->this$0:Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;->-$$Nest$fgetmEntryRootView(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI;)Landroid/view/ViewGroup;

    move-result-object p1

    new-instance p2, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1$$ExternalSyntheticLambda0;-><init>(Lcom/transsion/camera/feature/colorstyle/setting/ui/ColorStyleSettingUI$1;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_83
    return-void
.end method
