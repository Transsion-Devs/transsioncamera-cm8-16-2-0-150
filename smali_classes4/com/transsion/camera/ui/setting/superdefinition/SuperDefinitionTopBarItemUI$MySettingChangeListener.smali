.class Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$MySettingChangeListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySettingChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)V
    .registers 2

    .line 195
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI-IA;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$MySettingChangeListener;-><init>(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 195
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$MySettingChangeListener;->onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 198
    const-string p2, "key_auto_macro_switch_status"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 199
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI$MySettingChangeListener;->this$0:Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;

    # getter for: Lcom/transsion/camera/app/common/ui/setting/TopBarItemUI;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;->access$100(Lcom/transsion/camera/ui/setting/superdefinition/SuperDefinitionTopBarItemUI;)Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->shouldEscapeUpdateEntryValues(Z)V

    :cond_12
    return-void
.end method
