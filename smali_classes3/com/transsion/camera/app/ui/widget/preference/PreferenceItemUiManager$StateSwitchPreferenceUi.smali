.class public Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;
.super Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateSwitchPreferenceUi"
.end annotation


# static fields
.field static mSetSwitchState:Z

.field static mStateSwitchChecked:Z


# instance fields
.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 67
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 68
    iput p2, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;->type:I

    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .registers 5

    .line 73
    sget-boolean v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;->mSetSwitchState:Z

    if-eqz v0, :cond_c

    .line 74
    sget-boolean v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;->mStateSwitchChecked:Z

    invoke-virtual {p0, v0}, Lcom/transsion/camera/app/common/ui/preference/StateSwitchPreference;->setChecked(Z)V

    const/4 v0, 0x0

    .line 75
    sput-boolean v0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;->mSetSwitchState:Z

    .line 77
    :cond_c
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 78
    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-static {}, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager;->-$$Nest$sfgetmBindViewListener()Lcom/transsion/camera/app/common/ui/preference/BindViewListener;

    move-result-object v0

    iget v1, p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;->type:I

    const/4 v2, 0x0

    invoke-interface {v0, p1, p0, v1, v2}, Lcom/transsion/camera/app/common/ui/preference/BindViewListener;->onBindView(Landroid/view/View;Landroid/preference/Preference;ILcom/transsion/camera/app/common/ui/setting/IPreferenceItemUI;)V

    :cond_1f
    return-void
.end method

.method public setSwitchChecked(Z)V
    .registers 2

    const/4 p0, 0x1

    .line 82
    sput-boolean p0, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;->mSetSwitchState:Z

    .line 83
    sput-boolean p1, Lcom/transsion/camera/app/ui/widget/preference/PreferenceItemUiManager$StateSwitchPreferenceUi;->mStateSwitchChecked:Z

    return-void
.end method
