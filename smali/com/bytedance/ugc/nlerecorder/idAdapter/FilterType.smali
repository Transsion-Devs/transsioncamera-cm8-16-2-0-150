.class public final Lcom/bytedance/ugc/nlerecorder/idAdapter/FilterType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ugc/nlerecorder/idAdapter/FilterType$Companion;
    }
.end annotation


# static fields
.field public static final CANVAS_BLEND:Ljava/lang/String; = "canvas blend"

.field public static final CROP:Ljava/lang/String; = "crop"

.field public static final Companion:Lcom/bytedance/ugc/nlerecorder/idAdapter/FilterType$Companion;

.field public static final Transform:Ljava/lang/String; = "transform"

.field public static final VIDEO_EFFECT:Ljava/lang/String; = "video_effect"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ugc/nlerecorder/idAdapter/FilterType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ugc/nlerecorder/idAdapter/FilterType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ugc/nlerecorder/idAdapter/FilterType;->Companion:Lcom/bytedance/ugc/nlerecorder/idAdapter/FilterType$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
