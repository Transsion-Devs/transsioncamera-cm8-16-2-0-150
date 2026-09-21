.class public final synthetic Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;J)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda30;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    iput-wide p2, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda30;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda30;->f$0:Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;

    iget-wide v1, p0, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager$$ExternalSyntheticLambda30;->f$1:J

    check-cast p1, Lcom/transsion/camera/app/common/taps/entity/CacheInfo;

    invoke-static {v0, v1, v2, p1}, Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;->$r8$lambda$fciInEkRu276NOuz2Ohc70dPiFQ(Lcom/transsion/camera/app/common/storage/BackgroundStorageManager;JLcom/transsion/camera/app/common/taps/entity/CacheInfo;)V

    return-void
.end method
