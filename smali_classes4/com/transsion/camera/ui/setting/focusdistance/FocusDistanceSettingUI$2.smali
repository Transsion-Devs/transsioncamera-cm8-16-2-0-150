.class Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/setting/StatusMonitor$StatusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatusChanged(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 152
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$2;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    check-cast p2, Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fputmCurrentFocusDistanceValue(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;Ljava/lang/String;)V

    return-void
.end method
