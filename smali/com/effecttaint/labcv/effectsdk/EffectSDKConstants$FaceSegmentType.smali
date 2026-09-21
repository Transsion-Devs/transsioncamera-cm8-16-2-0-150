.class public Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceSegmentType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceSegmentType"
.end annotation


# static fields
.field public static final BEF_FACE_FACE_MASK:I = 0x3

.field public static final BEF_FACE_MOUTH_MASK:I = 0x1

.field public static final BEF_FACE_TEETH_MASK:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;


# direct methods
.method public constructor <init>(Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;)V
    .registers 2

    .line 393
    iput-object p1, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceSegmentType;->this$0:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
