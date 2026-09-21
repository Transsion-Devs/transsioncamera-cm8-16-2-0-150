.class public final Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;

.field private static final TAG:Ljava/lang/String; = "ExtractorLibsLoader"

.field private static hasLoad:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;->Companion:Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getHasLoad$cp()Z
    .registers 1

    .line 10
    sget-boolean v0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;->hasLoad:Z

    return v0
.end method

.method public static final synthetic access$setHasLoad$cp(Z)V
    .registers 1

    .line 10
    sput-boolean p0, Lcom/bytedance/ies/mediaprocessors/extractor/ExtractorNativeLibsLoader;->hasLoad:Z

    return-void
.end method
