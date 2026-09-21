.class public final Lcom/opensource/svgaplayer/utils/log/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;

    invoke-direct {v0}, Lcom/opensource/svgaplayer/utils/log/LogUtils;-><init>()V

    sput-object v0, Lcom/opensource/svgaplayer/utils/log/LogUtils;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/LogUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final debug(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1c

    .line 27
    :cond_13
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-interface {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1d

    .line 41
    :cond_13
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1d

    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1d
    :goto_1d
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "error"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_21

    .line 55
    :cond_18
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_21

    invoke-interface {p0, p1, p2, p3}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_21
    :goto_21
    return-void
.end method

.method public final error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "error"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_20

    .line 48
    :cond_13
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_20

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    :goto_20
    return-void
.end method

.method public final info(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1c

    .line 20
    :cond_13
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-interface {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public final warn(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string p0, "tag"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object p0, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->INSTANCE:Lcom/opensource/svgaplayer/utils/log/SVGALogger;

    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->isLogEnabled()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1c

    .line 34
    :cond_13
    invoke-virtual {p0}, Lcom/opensource/svgaplayer/utils/log/SVGALogger;->getSVGALogger()Lcom/opensource/svgaplayer/utils/log/ILogger;

    move-result-object p0

    if-eqz p0, :cond_1c

    invoke-interface {p0, p1, p2}, Lcom/opensource/svgaplayer/utils/log/ILogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method
