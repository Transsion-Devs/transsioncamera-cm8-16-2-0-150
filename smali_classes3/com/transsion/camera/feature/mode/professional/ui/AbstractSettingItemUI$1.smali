.class Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/IValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChanged(Ljava/lang/String;)V
    .registers 5

    .line 135
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->doOnValueChanged(Ljava/lang/String;ZZ)V

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "key_exposure"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_27

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-static {p1}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->-$$Nest$fgetmScrollerView(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/transsion/camera/app/ui/widget/ScrollerRulerView;->setIsDurationAuto(Z)V

    .line 138
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI$1;->this$0:Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;

    invoke-static {p0}, Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;->-$$Nest$fgetmAutoSwitchIcon(Lcom/transsion/camera/feature/mode/professional/ui/AbstractSettingItemUI;)Lcom/transsion/camera/app/ui/widget/RotateImageView;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setSelected(Z)V

    :cond_27
    return-void
.end method
