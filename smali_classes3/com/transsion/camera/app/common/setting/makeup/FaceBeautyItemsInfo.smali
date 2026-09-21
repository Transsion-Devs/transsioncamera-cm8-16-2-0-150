.class public Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public eye:I

.field public face:I

.field public featureId:I

.field public soften:I

.field public whiten:I


# direct methods
.method public constructor <init>(IIIII)V
    .registers 6

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->featureId:I

    .line 16
    iput p2, p0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->soften:I

    .line 17
    iput p3, p0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->whiten:I

    .line 18
    iput p4, p0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->face:I

    .line 19
    iput p5, p0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;->eye:I

    return-void
.end method

.method public static toJson(Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;)Ljava/lang/String;
    .registers 2

    .line 23
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 24
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toObject(Ljava/lang/String;)Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;
    .registers 3

    .line 29
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 30
    const-class v1, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/app/common/setting/makeup/FaceBeautyItemsInfo;

    return-object p0
.end method
