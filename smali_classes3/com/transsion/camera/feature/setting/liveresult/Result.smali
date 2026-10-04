.class public final Lcom/transsion/camera/feature/setting/liveresult/Result;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;


# instance fields
.field private final captureResult:Landroid/hardware/camera2/CaptureResult;

.field private final platformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

.field private final previewSize:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/transsion/camera/feature/setting/liveresult/Result;->Companion:Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V
    .registers 5

    const-string v0, "captureResult"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->captureResult:Landroid/hardware/camera2/CaptureResult;

    .line 9
    iput-object p2, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->previewSize:Landroid/util/Size;

    .line 10
    iput-object p3, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->platformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-void
.end method

.method public static final buildFrom(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/feature/setting/liveresult/Result;
    .registers 4

    sget-object v0, Lcom/transsion/camera/feature/setting/liveresult/Result;->Companion:Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;->buildFrom(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/feature/setting/liveresult/Result;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getCaptureResult()Landroid/hardware/camera2/CaptureResult;
    .registers 1

    .line 8
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->captureResult:Landroid/hardware/camera2/CaptureResult;

    return-object p0
.end method

.method public final getPlatformCamera()Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;
    .registers 1

    .line 10
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->platformCamera:Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;

    return-object p0
.end method

.method public final getPreviewSize()Landroid/util/Size;
    .registers 1

    .line 9
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/liveresult/Result;->previewSize:Landroid/util/Size;

    return-object p0
.end method
