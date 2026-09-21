.class public final Lcom/bytedance/ies/nlemedia/FilterType$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ies/nlemedia/FilterType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/bytedance/ies/nlemedia/FilterType$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEYFRAME_TYPES()[Ljava/lang/String;
    .registers 1

    .line 81
    # getter for: Lcom/bytedance/ies/nlemedia/FilterType;->KEYFRAME_TYPES:[Ljava/lang/String;
    invoke-static {}, Lcom/bytedance/ies/nlemedia/FilterType;->access$getKEYFRAME_TYPES$cp()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
