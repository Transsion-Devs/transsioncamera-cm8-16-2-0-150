.class public Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants$DetectMode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/EffectsSDKEffectConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DetectMode"
.end annotation


# static fields
.field public static final BEF_DETECT_MODE_IMAGE:I = 0x40000

.field public static final BEF_DETECT_MODE_IMAGE_SLOW:I = 0x80000

.field public static final BEF_DETECT_MODE_VIDEO:I = 0x20000

.field public static final BEF_DETECT_MODE_VIDEO_SLOW:I = 0x10000


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
