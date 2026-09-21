.class public Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Track;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/vesdk/runtime/VETimeEffectManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Track"
.end annotation


# instance fields
.field audioClips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;"
        }
    .end annotation
.end field

.field audioFilterIndex:I

.field audioTimeEffectClips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;"
        }
    .end annotation
.end field

.field timeEffectClips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;"
        }
    .end annotation
.end field

.field timeFilterParam:Lcom/ss/android/vesdk/filterparam/VEBaseFilterParam;

.field videoClips:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/vesdk/runtime/VETimeEffectManager$Clip;",
            ">;"
        }
    .end annotation
.end field

.field videoFilterIndex:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
