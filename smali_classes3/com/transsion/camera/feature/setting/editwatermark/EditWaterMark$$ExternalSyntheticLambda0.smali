.class public final synthetic Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

.field public final synthetic f$1:Lcom/transsion/camera/app/common/location/LocationManager;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Lcom/transsion/camera/app/common/location/LocationManager;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    iput-object p2, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/location/LocationManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;

    iget-object p0, p0, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark$$ExternalSyntheticLambda0;->f$1:Lcom/transsion/camera/app/common/location/LocationManager;

    invoke-static {v0, p0}, Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;->$r8$lambda$HAAuqUqzTrUvvVduBrSM2V9VevA(Lcom/transsion/camera/feature/setting/editwatermark/EditWaterMark;Lcom/transsion/camera/app/common/location/LocationManager;)V

    return-void
.end method
