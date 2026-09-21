.class final Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TemplateInfo"
.end annotation


# instance fields
.field private final mIndicator:Ljava/lang/String;

.field private final mIndicatorTitle:I

.field private final mTemplateTitle:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmIndicator(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;)Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->mIndicator:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIndicatorTitle(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->mIndicatorTitle:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemplateTitle(Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;)I
    .registers 1

    .line 0
    iget p0, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->mTemplateTitle:I

    return p0
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 640
    iput-object p1, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->mIndicator:Ljava/lang/String;

    .line 641
    iput p2, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->mIndicatorTitle:I

    .line 642
    iput p3, p0, Lcom/transsion/camera/feature/mode/aigc/repo/AIGCRepo$TemplateInfo;->mTemplateTitle:I

    return-void
.end method
