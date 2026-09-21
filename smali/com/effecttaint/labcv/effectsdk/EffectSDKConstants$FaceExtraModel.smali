.class public Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceExtraModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FaceExtraModel"
.end annotation


# static fields
.field public static final BEF_MOBILE_FACE_240_DETECT:I = 0x100

.field public static final BEF_MOBILE_FACE_240_DETECT_FASTMODE:I = 0x300000

.field public static final BEF_MOBILE_FACE_280_DETECT:I = 0x900


# instance fields
.field final synthetic this$0:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;


# direct methods
.method public constructor <init>(Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;)V
    .registers 2

    .line 349
    iput-object p1, p0, Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants$FaceExtraModel;->this$0:Lcom/effecttaint/labcv/effectsdk/EffectSDKConstants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
