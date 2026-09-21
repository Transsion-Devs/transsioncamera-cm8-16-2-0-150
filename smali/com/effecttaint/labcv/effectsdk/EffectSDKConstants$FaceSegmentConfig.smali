.class public Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceSegmentConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceSegmentConfig"
.end annotation


# static fields
.field public static final BEFF_MOBILE_FACE_REST_MASK:I = 0x500

.field public static final BEF_MOBILE_FACE_MOUTH_MASK:I = 0x300

.field public static final BEF_MOBILE_FACE_TEETH_MASK:I = 0x300


# instance fields
.field final synthetic this$0:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;


# direct methods
.method public constructor <init>(Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;)V
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceSegmentConfig;->this$0:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
