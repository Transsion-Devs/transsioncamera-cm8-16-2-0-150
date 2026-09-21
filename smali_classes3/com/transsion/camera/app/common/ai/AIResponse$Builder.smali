.class public Lcom/transsion/camera/app/common/ai/AIResponse$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/ai/AIResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mJpeg:[B

.field private mMessage:Ljava/lang/String;

.field private mStatusCode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/transsion/camera/app/common/ai/AIResponse;
    .registers 4

    .line 86
    new-instance v0, Lcom/transsion/camera/app/common/ai/AIResponse;

    iget v1, p0, Lcom/transsion/camera/app/common/ai/AIResponse$Builder;->mStatusCode:I

    iget-object v2, p0, Lcom/transsion/camera/app/common/ai/AIResponse$Builder;->mMessage:Ljava/lang/String;

    iget-object p0, p0, Lcom/transsion/camera/app/common/ai/AIResponse$Builder;->mJpeg:[B

    invoke-direct {v0, v1, v2, p0}, Lcom/transsion/camera/app/common/ai/AIResponse;-><init>(ILjava/lang/String;[B)V

    return-object v0
.end method

.method public jpeg([B)Lcom/transsion/camera/app/common/ai/AIResponse$Builder;
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIResponse$Builder;->mJpeg:[B

    return-object p0
.end method

.method public message(Ljava/lang/String;)Lcom/transsion/camera/app/common/ai/AIResponse$Builder;
    .registers 2

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/app/common/ai/AIResponse$Builder;->mMessage:Ljava/lang/String;

    return-object p0
.end method

.method public statusCode(I)Lcom/transsion/camera/app/common/ai/AIResponse$Builder;
    .registers 2

    .line 71
    iput p1, p0, Lcom/transsion/camera/app/common/ai/AIResponse$Builder;->mStatusCode:I

    return-object p0
.end method
