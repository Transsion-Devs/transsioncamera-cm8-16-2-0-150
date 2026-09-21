.class Lcom/transsion/camera/app/ui/setting/PreferenceList$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/common/ui/preference/BindViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/setting/PreferenceList;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/setting/PreferenceList;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/setting/PreferenceList;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/app/ui/setting/PreferenceList$1;->this$0:Lcom/transsion/camera/app/ui/setting/PreferenceList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V
    .registers 5

    .line 30
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PreferenceList$1;->this$0:Lcom/transsion/camera/app/ui/setting/PreferenceList;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/setting/PreferenceList;->-$$Nest$monBindItemView(Lcom/transsion/camera/app/ui/setting/PreferenceList;Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    return-void
.end method

.method public onBindView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V
    .registers 6

    .line 35
    iget-object p0, p0, Lcom/transsion/camera/app/ui/setting/PreferenceList$1;->this$0:Lcom/transsion/camera/app/ui/setting/PreferenceList;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/transsion/camera/app/ui/setting/PreferenceList;->-$$Nest$monBindItemView(Lcom/transsion/camera/app/ui/setting/PreferenceList;Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    if-eqz p5, :cond_20

    .line 36
    invoke-virtual {p5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDescription()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 37
    sget p0, Lcom/transsion/camera/R$id;->description:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 38
    invoke-virtual {p5}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    .line 39
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_20
    return-void
.end method
