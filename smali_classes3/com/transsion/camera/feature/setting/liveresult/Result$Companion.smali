.class public final Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/liveresult/Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/transsion/camera/feature/setting/liveresult/Result$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final buildFrom(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)Lcom/transsion/camera/feature/setting/liveresult/Result;
    .registers 4

    const-string p0, "captureResult"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance p0, Lcom/transsion/camera/feature/setting/liveresult/Result;

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/camera/feature/setting/liveresult/Result;-><init>(Landroid/hardware/camera2/CaptureResult;Landroid/util/Size;Lcom/transsion/camera/adapter/platformcamera/IPlatformCamera2;)V

    return-object p0
.end method
