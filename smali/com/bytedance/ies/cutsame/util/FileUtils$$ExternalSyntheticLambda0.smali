.class public final synthetic Lcom/bytedance/ies/cutsame/util/FileUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FileFilter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/ies/cutsame/util/FileUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;)Z
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/bytedance/ies/cutsame/util/FileUtils$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/bytedance/ies/cutsame/util/FileUtils;->$r8$lambda$ySxFLc_YtJL6E10sPk_kcGfs5UM(Ljava/lang/String;Ljava/io/File;)Z

    move-result p0

    return p0
.end method
