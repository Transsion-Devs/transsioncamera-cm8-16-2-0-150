.class public Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;
    }
.end annotation


# static fields
.field public static final API_MODE_CANVAS_PAINT:I = 0x1

.field public static final API_MODE_VIEW_BACKGROUND:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TranUnionRenderEffectProxy"


# instance fields
.field private mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;

.field private mThubService:Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    return-void
.end method

.method public constructor <init>(Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V
    .registers 4

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;Z)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    .line 97
    instance-of v0, p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    if-eqz v0, :cond_14

    .line 98
    check-cast p0, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    .line 99
    invoke-virtual {p0, p1}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;->setRealObject(Lcom/transsion/hubsdk/view/TranUnionRenderEffect;)V

    return-void

    .line 101
    :cond_14
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->TAG:Ljava/lang/String;

    const-string p1, "re-establish TranUnionRenderEffectProxy fail: mAospService not support."

    invoke-static {p0, p1}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private convertFrom(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;
    .registers 2

    .line 160
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->G1:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_7

    .line 161
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_G1:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 162
    :cond_7
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->G2:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_e

    .line 163
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_G2:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 164
    :cond_e
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->G3:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_15

    .line 165
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_G3:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 166
    :cond_15
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L1_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_1c

    .line 167
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L1_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 168
    :cond_1c
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L2_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_23

    .line 169
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L2_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 170
    :cond_23
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L3_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_2a

    .line 171
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L3_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 172
    :cond_2a
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L4_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_31

    .line 173
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L4_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 174
    :cond_31
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L1_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_38

    .line 175
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L1_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 176
    :cond_38
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L2_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_3f

    .line 177
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L2_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 178
    :cond_3f
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L3_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_46

    .line 179
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L3_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 180
    :cond_46
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->L4_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_4d

    .line 181
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_L4_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 182
    :cond_4d
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT1_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_54

    .line 183
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT1_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 184
    :cond_54
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT2_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_5b

    .line 185
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT2_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 186
    :cond_5b
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT3_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_62

    .line 187
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT3_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 188
    :cond_62
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT4_LIGHT:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_69

    .line 189
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT4_LIGHT:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 190
    :cond_69
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT1_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_70

    .line 191
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT1_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 192
    :cond_70
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT2_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_77

    .line 193
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT2_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 194
    :cond_77
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT3_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_7e

    .line 195
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT3_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 196
    :cond_7e
    sget-object p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;->GT4_DARK:Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;

    if-ne p1, p0, :cond_85

    .line 197
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_GT4_DARK:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0

    .line 199
    :cond_85
    sget-object p0, Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;->MODE_NONE:Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    return-object p0
.end method

.method public static final getApiLevel()I
    .registers 1

    .line 111
    invoke-static {}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->getApiLevel()I

    move-result v0

    return v0
.end method

.method public static isUnionRenderEffectSupport()Z
    .registers 1

    .line 120
    invoke-static {}, Lcom/transsion/hubsdk/view/TranUnionRenderEffect;->isUnionRenderEffectSupport()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public disableAutoInvalidateWhenCrossWindowUpdate()V
    .registers 2

    .line 453
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableAutoInvalidateWhenCrossWindowUpdate()V

    return-void
.end method

.method public disableBackdropBlur()V
    .registers 2

    .line 382
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableBackdropBlur()V

    return-void
.end method

.method public disableBlendColorDark()V
    .registers 2

    .line 292
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableBlendColorDark()V

    return-void
.end method

.method public disableBlendColorLight()V
    .registers 2

    .line 299
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableBlendColorLight()V

    return-void
.end method

.method public disableCrossWindowBlur()V
    .registers 2

    .line 375
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableCrossWindowBlur()V

    return-void
.end method

.method public disableGlobalBlurRadius()V
    .registers 2

    .line 330
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableGlobalBlurRadius()V

    return-void
.end method

.method public disableLocalBlurRadius()V
    .registers 2

    .line 314
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableLocalBlurRadius()V

    return-void
.end method

.method public disableMaxCrossFadeRadius()V
    .registers 2

    .line 423
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableMaxCrossFadeRadius()V

    return-void
.end method

.method public disableMirrorScale()V
    .registers 2

    .line 439
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableMirrorScale()V

    return-void
.end method

.method public disableRoundCorner()V
    .registers 2

    .line 407
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableRoundCorner()V

    return-void
.end method

.method public disableStaticBlur()V
    .registers 2

    .line 361
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableStaticBlur()V

    return-void
.end method

.method public disableUnionBlur()V
    .registers 2

    .line 389
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->disableUnionBlur()V

    return-void
.end method

.method public enableAutoInvalidateWhenCrossWindowUpdate()V
    .registers 2

    .line 446
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableAutoInvalidateWhenCrossWindowUpdate()V

    return-void
.end method

.method public enableBackdropBlur()V
    .registers 2

    .line 344
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBackdropBlur()V

    return-void
.end method

.method public enableBlendColorDark(IIIIII)V
    .registers 8

    .line 222
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBlendColorDark(IIIIII)V

    return-void
.end method

.method public enableBlendColorDark(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)V
    .registers 3

    .line 208
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->convertFrom(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBlendColorDark(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V

    return-void
.end method

.method public enableBlendColorLight(IIIIII)V
    .registers 8

    .line 236
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p6}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBlendColorLight(IIIIII)V

    return-void
.end method

.method public enableBlendColorLight(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)V
    .registers 3

    .line 285
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->convertFrom(Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy$TranBlendColor;)Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableBlendColorLight(Lcom/transsion/hubsdk/view/TranUnionRenderEffect$TranBlendColor;)V

    return-void
.end method

.method public enableCrossWindowBlur()V
    .registers 2

    .line 337
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableCrossWindowBlur()V

    return-void
.end method

.method public enableDynamicBlendColorDark(IIIIIIIII)V
    .registers 11

    .line 254
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p9}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableDynamicBlendColorDark(IIIIIIIII)V

    return-void
.end method

.method public enableDynamicBlendColorLight(IIIIIIIII)V
    .registers 11

    .line 274
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface/range {p0 .. p9}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableDynamicBlendColorLight(IIIIIIIII)V

    return-void
.end method

.method public enableGlobalBlurRadius(F)V
    .registers 3

    .line 323
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableGlobalBlurRadius(F)V

    return-void
.end method

.method public enableLocalBlurRadius(F)V
    .registers 3

    .line 307
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableLocalBlurRadius(F)V

    return-void
.end method

.method public enableMaxCrossFadeRadius(F)V
    .registers 3

    .line 416
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableMaxCrossFadeRadius(F)V

    return-void
.end method

.method public enableMirrorScale(F)V
    .registers 3

    .line 432
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableMirrorScale(F)V

    return-void
.end method

.method public enableRoundCorner(FZF)V
    .registers 5

    .line 400
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableRoundCorner(FZF)V

    return-void
.end method

.method public enableStaticBlur(Landroid/graphics/Bitmap;ZF)V
    .registers 5

    .line 354
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableStaticBlur(Landroid/graphics/Bitmap;ZF)V

    return-void
.end method

.method public enableUnionBlur()V
    .registers 2

    .line 368
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->enableUnionBlur()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 80
    :cond_4
    instance-of v1, p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    if-eqz v1, :cond_16

    .line 81
    check-cast p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;

    .line 82
    invoke-virtual {p1}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p1

    invoke-virtual {p0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    if-ne p1, p0, :cond_16

    const/4 p0, 0x1

    return p0

    :cond_16
    return v0
.end method

.method public getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;
    .registers 2

    .line 56
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;
    .registers 3

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;Z)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    return-object p0
.end method

.method protected getService(Ljava/lang/String;Z)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;
    .registers 4

    .line 42
    invoke-static {p1}, Lcom/transsion/hubsdk/common/version/TranVersion;->isIntegratedThubCore(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 43
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->TAG:Ljava/lang/String;

    const-string v0, "TranThubUnionRenderEffect"

    invoke-static {p1, v0}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    if-nez p1, :cond_18

    new-instance p1, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    invoke-direct {p1, p2}, Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;-><init>(Z)V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->mThubService:Lcom/transsion/hubsdk/core/view/TranThubUnionRenderEffect;

    :cond_18
    return-object p1

    .line 46
    :cond_19
    sget-object p1, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->TAG:Ljava/lang/String;

    const-string p2, "TranAospUnionRenderEffect"

    invoke-static {p1, p2}, Lcom/transsion/hubsdk/common/util/TranSdkLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object p1, p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;

    if-nez p1, :cond_2b

    new-instance p1, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;

    invoke-direct {p1}, Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->mAospService:Lcom/transsion/hubsdk/aosp/view/TranAospUnionRenderEffect;

    :cond_2b
    return-object p1
.end method

.method public isAutoInvalidate()Z
    .registers 2

    .line 461
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->isAutoInvalidate()Z

    move-result p0

    return p0
.end method

.method public isBackdropBlur()Z
    .registers 2

    .line 138
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->isBackdropBlur()Z

    move-result p0

    return p0
.end method

.method public isStaticBlur()Z
    .registers 2

    .line 147
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->isStaticBlur()Z

    move-result p0

    return p0
.end method

.method public isUnionBlur()Z
    .registers 2

    .line 129
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->isUnionBlur()Z

    move-result p0

    return p0
.end method

.method public refRealObject()Ljava/lang/Object;
    .registers 2

    .line 65
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->getRealObject()Lcom/transsion/hubsdk/view/TranUnionRenderEffect;

    move-result-object p0

    return-object p0
.end method

.method public requestFrameSpacing(I)Z
    .registers 3

    .line 471
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->requestFrameSpacing(I)Z

    move-result p0

    return p0
.end method

.method public requiresNoEffect()Z
    .registers 2

    .line 156
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->requiresNoEffect()Z

    move-result p0

    return p0
.end method

.method public setApiMode(I)V
    .registers 3

    .line 489
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33431:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->setApiMode(I)V

    return-void
.end method

.method public setBlurAlgorithm(I)V
    .registers 3

    .line 480
    sget-object v0, Lcom/transsion/hubsdk/common/version/TranVersion$Core;->VERSION_33411:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/transsion/hubsdk/api/view/TranUnionRenderEffectProxy;->getService(Ljava/lang/String;)Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/hubsdk/interfaces/view/ITranUnionRenderEffectAdapter;->setBlurAlgorithm(I)V

    return-void
.end method
