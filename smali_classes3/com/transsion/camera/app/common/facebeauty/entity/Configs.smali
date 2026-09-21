.class public Lcom/transsion/camera/app/common/facebeauty/entity/Configs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/facebeauty/entity/Configs$GenderConfigEntity;,
        Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;
    }
.end annotation


# instance fields
.field public list:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "list"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/facebeauty/entity/Configs$FaceBeautyConfigEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
