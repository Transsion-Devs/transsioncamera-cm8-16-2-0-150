.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "SourceFile"


# instance fields
.field private final appGlideModule:Lcom/transsion/camera/glide/CameraGlideModule;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 14
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 15
    new-instance p1, Lcom/transsion/camera/glide/CameraGlideModule;

    invoke-direct {p1}, Lcom/transsion/camera/glide/CameraGlideModule;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/transsion/camera/glide/CameraGlideModule;

    const/4 p0, 0x3

    .line 16
    const-string p1, "Glide"

    invoke-static {p1, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 17
    const-string p0, "Discovered AppGlideModule from annotation: com.transsion.camera.glide.CameraGlideModule"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V
    .registers 3

    .line 23
    iget-object p0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/transsion/camera/glide/CameraGlideModule;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/camera/glide/CameraGlideModule;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/GlideBuilder;)V

    return-void
.end method

.method public getExcludedModuleClasses()Ljava/util/Set;
    .registers 1

    .line 40
    sget-object p0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object p0
.end method

.method getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;
    .registers 1

    .line 46
    new-instance p0, Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedRequestManagerFactory;-><init>()V

    return-object p0
.end method

.method bridge synthetic getRequestManagerFactory()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->getRequestManagerFactory()Lcom/bumptech/glide/GeneratedRequestManagerFactory;

    move-result-object p0

    return-object p0
.end method

.method public isManifestParsingEnabled()Z
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/transsion/camera/glide/CameraGlideModule;

    invoke-virtual {p0}, Lcom/bumptech/glide/module/AppGlideModule;->isManifestParsingEnabled()Z

    move-result p0

    return p0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V
    .registers 4

    .line 29
    iget-object p0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->appGlideModule:Lcom/transsion/camera/glide/CameraGlideModule;

    invoke-virtual {p0, p1, p2, p3}, Lcom/bumptech/glide/module/LibraryGlideModule;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/Registry;)V

    return-void
.end method
