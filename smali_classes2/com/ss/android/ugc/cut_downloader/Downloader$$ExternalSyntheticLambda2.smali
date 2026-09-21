.class public final synthetic Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/ss/android/ugc/cut_downloader/Downloader;


# direct methods
.method public synthetic constructor <init>(Lcom/ss/android/ugc/cut_downloader/Downloader;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda2;->f$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .registers 2

    .line 0
    iget-object p0, p0, Lcom/ss/android/ugc/cut_downloader/Downloader$$ExternalSyntheticLambda2;->f$0:Lcom/ss/android/ugc/cut_downloader/Downloader;

    check-cast p1, Lcom/ss/android/ugc/cut_downloader/IDownloadService;

    invoke-static {p0, p1}, Lcom/ss/android/ugc/cut_downloader/Downloader;->$r8$lambda$8L7gJ57NsGzJC_o98YDxyrEoAVk(Lcom/ss/android/ugc/cut_downloader/Downloader;Lcom/ss/android/ugc/cut_downloader/IDownloadService;)V

    return-void
.end method
