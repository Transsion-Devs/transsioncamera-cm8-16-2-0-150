.class public final Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

.field private static sInstance:Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Lcom/transsion/camera/utils/debug/Log$Tag;

    const-string v1, "Watermark"

    invoke-direct {v0, v1}, Lcom/transsion/camera/utils/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    .line 26
    new-instance v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->sInstance:Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p0, 0x0

    .line 29
    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "com.transsion.camera.feature.watermark.WatermarkImpl"

    invoke-static {v0, p0}, Lcom/transsion/camera/utils/ReflectionUtils;->instance(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    return-void
.end method

.method public static algorithmMigrate()Z
    .registers 1

    .line 33
    sget-object v0, Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;->sInstance:Lcom/transsion/camera/app/common/algorithm/watermark/Watermark;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    return v0
.end method
