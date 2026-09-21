.class public Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/common/facebeauty/entity/Configs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FaceBeautyConfigEntity"
.end annotation


# instance fields
.field public backCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "back_camera"
    .end annotation
.end field

.field public configType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "config_type"
    .end annotation
.end field

.field public frontCamera:Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "front_camera"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
