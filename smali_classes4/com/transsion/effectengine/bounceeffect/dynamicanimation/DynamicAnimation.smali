.class public abstract Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOfor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcatch;,
        Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;
    }
.end annotation


# static fields
.field public static final ALPHA:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final ROTATION:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final ROTATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final ROTATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final SCALE_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final SCALE_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final SCROLL_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final SCROLL_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final TRANSLATION_Z:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

.field public static final Z:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;


# instance fields
.field public mAnimationHandler:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

.field public final mEndListeners:Ljava/util/ArrayList;

.field public mLastFrameTime:J

.field public mMaxValue:F

.field public mMinValue:F

.field public mMinVisibleChange:F

.field public final mProperty:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;

.field public mRunning:Z

.field public mStartValueIsSet:Z

.field public final mTarget:Ljava/lang/Object;

.field public final mUpdateListeners:Ljava/util/ArrayList;

.field public mValue:F

.field public mVelocity:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObyte;

    const-string v1, "translationX"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObyte;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcase;

    const-string v1, "translationY"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOcase;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOchar;

    const-string v1, "translationZ"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOchar;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->TRANSLATION_Z:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOelse;

    const-string v1, "scaleX"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOelse;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCALE_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOgoto;

    const-string v1, "scaleY"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOgoto;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCALE_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOlong;

    const-string v1, "rotation"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOlong;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOthis;

    const-string v1, "rotationX"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOthis;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOvoid;

    const-string v1, "rotationY"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOvoid;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObreak;

    const-string v1, "x"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoObreak;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOdo;

    const-string v1, "y"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOdo;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOif;

    const-string v1, "z"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOif;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->Z:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfor;

    const-string v1, "alpha"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfor;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ALPHA:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOint;

    const-string v1, "scrollX"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOint;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCROLL_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    new-instance v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOnew;

    const-string v1, "scrollY"

    invoke-direct {v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOnew;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCROLL_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mStartValueIsSet:Z

    iput-boolean v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    const v0, -0x800001

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    iput-object p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mProperty:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;

    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-eq p2, p1, :cond_53

    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-eq p2, p1, :cond_53

    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ROTATION_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-ne p2, p1, :cond_3a

    goto :goto_53

    :cond_3a
    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->ALPHA:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-ne p2, p1, :cond_43

    const/high16 p1, 0x3b800000    # 0.00390625f

    :goto_40
    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinVisibleChange:F

    return-void

    :cond_43
    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCALE_X:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-eq p2, p1, :cond_4f

    sget-object p1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->SCALE_Y:Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOfinal;

    if-ne p2, p1, :cond_4c

    goto :goto_4f

    :cond_4c
    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_40

    :cond_4f
    :goto_4f
    const p1, 0x3b03126f    # 0.002f

    goto :goto_40

    :cond_53
    :goto_53
    const p1, 0x3dcccccd    # 0.1f

    goto :goto_40
.end method

.method private endAnimationInternal(Z)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getAnimationHandler()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    move-result-object v1

    .line 1
    iget-object v2, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOdo:Landroid/util/ArrayMap;

    invoke-virtual {v2, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    if-ltz v2, :cond_1d

    iget-object v3, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoObyte:Z

    :cond_1d
    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mStartValueIsSet:Z

    :goto_23
    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_45

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;

    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v3, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    invoke-interface {v1, p0, p1, v2, v3}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;ZFF)V

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_45
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method private getPropertyValue()F
    .registers 2

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mProperty:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;

    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;->z1OoOdo(Ljava/lang/Object;)F

    move-result p0

    return p0
.end method

.method public static removeNullEntries(Ljava/util/ArrayList;)V
    .registers 3

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_14

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_11

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_11
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_14
    return-void
.end method

.method private startAnimationInternal()V
    .registers 4

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_48

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mStartValueIsSet:Z

    if-nez v0, :cond_11

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getPropertyValue()F

    move-result v0

    iput v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    :cond_11
    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    cmpl-float v1, v0, v1

    if-gtz v1, :cond_40

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_40

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getAnimationHandler()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    move-result-object v0

    .line 1
    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_32

    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOtry;

    iget-object v2, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOint:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOtry;->z1OoOdo(Ljava/lang/Runnable;)V

    :cond_32
    iget-object v1, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOif:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 2
    :cond_40
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Starting value need to be in between min value and max value"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_48
    return-void
.end method


# virtual methods
.method public addEndListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOclass;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .registers 3

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    return-object p0
.end method

.method public addUpdateListener(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .registers 3

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->isRunning()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_13
    return-object p0

    :cond_14
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Error: Update listeners must be added beforethe animation."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public cancel()V
    .registers 2

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getAnimationHandler()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOtry;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOtry;->z1OoOdo()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 2
    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_14
    return-void

    :cond_15
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be canceled from the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public doAnimationFrame(J)Z
    .registers 7

    iget-wide v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-nez v2, :cond_3b

    iput-wide p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    iget p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    if-nez p2, :cond_37

    sget p1, Lcom/transsion/effectengine/bounceeffect/BounceEdgeEffect;->mCurrentRefreshRate:F

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p2, p1

    float-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result p1

    iget p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz p1, :cond_36

    invoke-direct {p0, v3}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_36
    return p1

    :cond_37
    invoke-virtual {p0, p1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setPropertyValue(F)V

    return v3

    :cond_3b
    sub-long v0, p1, v0

    iput-wide p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mLastFrameTime:J

    invoke-virtual {p0, v0, v1}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->updateValueAndVelocity(J)Z

    move-result p1

    iget p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMaxValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinValue:F

    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    invoke-virtual {p0, p2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->setPropertyValue(F)V

    if-eqz p1, :cond_5d

    invoke-direct {p0, v3}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->endAnimationInternal(Z)V

    :cond_5d
    return p1
.end method

.method public getAnimationHandler()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;
    .registers 4

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mAnimationHandler:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    if-nez v0, :cond_21

    .line 1
    sget-object v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOcase:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    new-instance v1, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    new-instance v2, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOnew;

    invoke-direct {v2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOnew;-><init>()V

    invoke-direct {v1, v2}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;-><init>(Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOtry;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_19
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    .line 2
    iput-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mAnimationHandler:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    :cond_21
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mAnimationHandler:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    return-object p0
.end method

.method public getValueThreshold()F
    .registers 2

    iget p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mMinVisibleChange:F

    const/high16 v0, 0x3f400000    # 0.75f

    mul-float/2addr p0, v0

    return p0
.end method

.method public isRunning()Z
    .registers 1

    iget-boolean p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    return p0
.end method

.method public setPropertyValue(F)V
    .registers 5

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mProperty:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;

    iget-object v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOif;->z1OoOdo(Ljava/lang/Object;F)V

    const/4 p1, 0x0

    :goto_8
    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_2a

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;

    iget v1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mValue:F

    iget v2, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    invoke-interface {v0, p0, v1, v2}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation$z1OoOconst;->z1OoOdo(Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;FF)V

    :cond_27
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_2a
    iget-object p0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setStartVelocity(F)Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;
    .registers 2

    iput p1, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mVelocity:F

    return-object p0
.end method

.method public start()V
    .registers 2

    invoke-virtual {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->getAnimationHandler()Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;

    move-result-object v0

    .line 1
    iget-object v0, v0, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo;->z1OoOnew:Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOtry;

    invoke-interface {v0}, Lz1OoOdo/z1OoOdo/z1OoOdo/z1OoOdo/z1OoOcase/z1OoOdo$z1OoOtry;->z1OoOdo()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2
    iget-boolean v0, p0, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->mRunning:Z

    if-nez v0, :cond_13

    invoke-direct {p0}, Lcom/transsion/effectengine/bounceeffect/dynamicanimation/DynamicAnimation;->startAnimationInternal()V

    :cond_13
    return-void

    :cond_14
    new-instance p0, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animations may only be started on the same thread as the animation handler"

    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract updateValueAndVelocity(J)Z
.end method
