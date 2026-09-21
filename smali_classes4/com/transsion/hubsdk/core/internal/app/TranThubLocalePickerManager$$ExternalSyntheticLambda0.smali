.class public final synthetic Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/transsion/hubsdk/common/bp/TranTimeOutOrExceptionExecute$TimeOutAndExceptionRunnable;


# instance fields
.field public final synthetic f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

.field public final synthetic f$1:Ljava/util/Locale;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;Ljava/util/Locale;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    iput-object p2, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/Locale;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager$$ExternalSyntheticLambda0;->f$0:Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;

    iget-object p0, p0, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager$$ExternalSyntheticLambda0;->f$1:Ljava/util/Locale;

    invoke-static {v0, p0}, Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;->$r8$lambda$7NdUE8rgAkX_LsO21i4p5_jZuEg(Lcom/transsion/hubsdk/core/internal/app/TranThubLocalePickerManager;Ljava/util/Locale;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
