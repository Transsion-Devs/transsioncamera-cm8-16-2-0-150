.class public Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/effectsar/labcv/effectsdk/OnekeyEnhance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceRect"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput p1, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;->top:I

    .line 228
    iput p2, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;->left:I

    .line 229
    iput p3, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;->right:I

    .line 230
    iput p4, p0, Lcom/effectsar/labcv/effectsdk/OnekeyEnhance$FaceRect;->bottom:I

    return-void
.end method
