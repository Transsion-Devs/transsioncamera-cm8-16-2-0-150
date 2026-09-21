.class public final enum Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

.field public static final enum BOTTOM:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

.field public static final enum CENTER_CROP:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

.field public static final enum FILL:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

.field public static final enum TOP:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;


# direct methods
.method private static synthetic $values()[Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;
    .registers 4

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->CENTER_CROP:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    sget-object v1, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->TOP:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    sget-object v2, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->BOTTOM:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    sget-object v3, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->FILL:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    filled-new-array {v0, v1, v2, v3}, [Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->CENTER_CROP:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    .line 37
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->TOP:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    .line 38
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    const-string v1, "BOTTOM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->BOTTOM:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    .line 39
    new-instance v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    const-string v1, "FILL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->FILL:Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    .line 35
    invoke-static {}, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->$values()[Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->$VALUES:[Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;
    .registers 2

    .line 35
    const-class v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;
    .registers 1

    .line 35
    sget-object v0, Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->$VALUES:[Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    invoke-virtual {v0}, [Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/transsion/camera/feature/mode/vlog/widget/ScalableTextureView$ScaleType;

    return-object v0
.end method
