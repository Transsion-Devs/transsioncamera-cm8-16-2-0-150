.class final Lcom/ss/ugc/effectplatform/util/GPUUtils$getAdrenoGpuFreq$kgslPaths$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ugc/effectplatform/util/GPUUtils;->getAdrenoGpuFreq(Ljava/lang/String;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils$getAdrenoGpuFreq$kgslPaths$1;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ss/ugc/effectplatform/util/GPUUtils$getAdrenoGpuFreq$kgslPaths$1;

    invoke-direct {v0}, Lcom/ss/ugc/effectplatform/util/GPUUtils$getAdrenoGpuFreq$kgslPaths$1;-><init>()V

    sput-object v0, Lcom/ss/ugc/effectplatform/util/GPUUtils$getAdrenoGpuFreq$kgslPaths$1;->INSTANCE:Lcom/ss/ugc/effectplatform/util/GPUUtils$getAdrenoGpuFreq$kgslPaths$1;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 5

    .line 163
    const-string p0, "file"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1d

    const-string p0, "s"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x2

    const/4 v0, 0x0

    const-string v1, "kgsl"

    invoke-static {p2, v1, p1, p0, v0}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    return p1
.end method
