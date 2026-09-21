.class Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    .line 121
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .line 124
    invoke-static {p1}, Lcom/transsion/camera/utils/MultiTouchManager;->canPerformClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fgetmFocusDistanceList(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v3

    if-ne v2, v3, :cond_2c

    const/4 v2, 0x1

    .line 129
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_11

    :cond_2c
    const/4 v2, 0x0

    .line 131
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_11

    .line 134
    :cond_31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 135
    sget v0, Lcom/transsion/camera/R$id;->focus_distance_af:I

    if-ne p1, v0, :cond_41

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    const-string v0, "continuous-picture"

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fputmCurrentFocusDistanceValue(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;Ljava/lang/String;)V

    goto :goto_64

    .line 137
    :cond_41
    sget v0, Lcom/transsion/camera/R$id;->focus_distance_1m:I

    if-ne p1, v0, :cond_4d

    .line 138
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    const-string v0, "1"

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fputmCurrentFocusDistanceValue(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;Ljava/lang/String;)V

    goto :goto_64

    .line 139
    :cond_4d
    sget v0, Lcom/transsion/camera/R$id;->focus_distance_3m:I

    if-ne p1, v0, :cond_59

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    const-string v0, "0.33"

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fputmCurrentFocusDistanceValue(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;Ljava/lang/String;)V

    goto :goto_64

    .line 141
    :cond_59
    sget v0, Lcom/transsion/camera/R$id;->focus_distance_5m:I

    if-ne p1, v0, :cond_64

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    const-string v0, "0.2"

    invoke-static {p1, v0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fputmCurrentFocusDistanceValue(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;Ljava/lang/String;)V

    .line 144
    :cond_64
    :goto_64
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fgetmOperationControl(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p1

    const/16 v0, 0x6f

    invoke-interface {p1, v0}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    .line 145
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fgetmDeviceSetting(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI$1;->this$0:Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;->-$$Nest$fgetmCurrentFocusDistanceValue(Lcom/transsion/camera/ui/setting/focusdistance/FocusDistanceSettingUI;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    return-void
.end method
