.class public Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;


# static fields
.field public static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;


# instance fields
.field private mAppUI:Lcom/transsion/camera/app/common/IAppUI;

.field private mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

.field private mIsShown:Z

.field private mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

.field private mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "ProfessionalGraduationView"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/camera/app/common/IAppUI;)V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mAppUI:Lcom/transsion/camera/app/common/IAppUI;

    return-void
.end method

.method private creatGraduationViewData()V
    .registers 7

    const/4 v0, 0x0

    .line 120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v2, :cond_b1

    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-nez v3, :cond_f

    goto/16 :goto_b1

    .line 103
    :cond_f
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntries()[Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v3}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 105
    array-length v4, v2

    if-nez v4, :cond_21

    array-length v4, v3

    if-nez v4, :cond_21

    goto/16 :goto_b1

    .line 109
    :cond_21
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v4, p0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setOnProgressChangeListener(Lcom/transsion/camera/app/ui/widget/GraduationView$OnProgressChangeListener;)V

    .line 110
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    array-length v5, v2

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorMoveCount(I)V

    .line 111
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setPauseIndependentIndex(I)V

    .line 112
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_exposure_time"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 113
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_iso"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8e

    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 114
    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_manual_white_balance"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5d

    goto :goto_8e

    .line 118
    :cond_5d
    iget-object v4, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v4}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "key_manual_focus"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 119
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 120
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setIndependentCursorIndexList(Ljava/util/List;)V

    .line 123
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setPauseIndependentIndex(I)V

    goto :goto_9b

    .line 125
    :cond_87
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setIndependentCursorIndexList(Ljava/util/List;)V

    goto :goto_9b

    .line 115
    :cond_8e
    :goto_8e
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 116
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v1, v4}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setIndependentCursorIndexList(Ljava/util/List;)V

    .line 128
    :goto_9b
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v1, v2, v3}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setCursorTitleContents([Ljava/lang/String;[Landroid/graphics/drawable/Drawable;)V

    .line 129
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    sget-object v2, Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;->PROFESSIONAL:Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;

    invoke-virtual {v1, v2}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setStyle(Lcom/transsion/camera/app/ui/widget/graduated/GraduationStyle;)V

    .line 130
    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {v1, v0}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setNeedAnimate(Z)V

    .line 131
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_b1
    :goto_b1
    return-void
.end method


# virtual methods
.method public isShowing()Z
    .registers 1

    .line 54
    iget-boolean p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mIsShown:Z

    return p0
.end method

.method public onProgressChanged(IZ)V
    .registers 5

    .line 136
    sget-object p2, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onProgressChanged progress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSettingUISpec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", this:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 137
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    if-eqz p2, :cond_46

    .line 138
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object p2

    .line 139
    array-length v0, p2

    if-ge p1, v0, :cond_46

    const/4 v0, -0x1

    if-le p1, v0, :cond_46

    .line 141
    aget-object p1, p2, p1

    .line 142
    iget-object p2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;->onSeekBarValueChanged(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_46
    return-void
.end method

.method public setGraduationView(Lcom/transsion/camera/app/ui/widget/GraduationView;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    return-void
.end method

.method public setShowStatus(Z)V
    .registers 2

    .line 50
    iput-boolean p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mIsShown:Z

    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    .line 81
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-eqz p0, :cond_7

    .line 82
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    return-void
.end method

.method public showIfNeed(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;Ljava/lang/String;Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;)Z
    .registers 7

    .line 58
    sget-object v0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showIfNeed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-nez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_16

    :cond_12
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    :goto_16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " --> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-nez v0, :cond_3a

    const/4 p0, 0x0

    return p0

    .line 64
    :cond_3a
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_52

    .line 65
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v1, v0

    :cond_52
    if-eqz v1, :cond_5e

    .line 71
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    .line 72
    iput-object p3, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mStateChangeCallback:Lcom/transsion/camera/feature/mode/professional/ui/ISeekBarView$OnStateChangeCallback;

    .line 73
    invoke-direct {p0}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->creatGraduationViewData()V

    .line 74
    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->updateValue(Ljava/lang/String;)V

    :cond_5e
    return v1
.end method

.method public updateValue(Ljava/lang/String;)V
    .registers 4

    .line 87
    iget-object v0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mSettingUISpec:Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    if-nez v1, :cond_9

    goto :goto_1a

    .line 90
    :cond_9
    invoke-virtual {v0}, Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;->getSupportedEntryValues()[Ljava/lang/String;

    move-result-object v0

    .line 91
    array-length v1, v0

    if-nez v1, :cond_11

    goto :goto_1a

    .line 95
    :cond_11
    invoke-static {v0, p1}, Lcom/transsion/camera/utils/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    .line 96
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/professional/widget/ProfessionalGraduationView;->mGraduationView:Lcom/transsion/camera/app/ui/widget/GraduationView;

    invoke-virtual {p0, p1}, Lcom/transsion/camera/app/ui/widget/GraduationView;->setProgress(I)V

    :cond_1a
    :goto_1a
    return-void
.end method
