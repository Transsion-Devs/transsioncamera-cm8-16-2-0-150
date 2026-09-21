.class public abstract Lcom/transsion/sort/ContactLocaleHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getContactLocaleUtils(Landroid/content/Context;)Lcom/transsion/sort/IContactLocale;
    .registers 1

    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 26
    filled-new-array {p0}, [Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lcom/transsion/sort24/LocaleSet;->newForTest([Ljava/util/Locale;)Lcom/transsion/sort24/LocaleSet;

    move-result-object p0

    .line 27
    invoke-static {p0}, Lcom/transsion/sort24/ContactLocaleUtils;->setLocales(Lcom/transsion/sort24/LocaleSet;)V

    .line 28
    invoke-static {}, Lcom/transsion/sort24/ContactLocaleUtils;->getInstance()Lcom/transsion/sort24/ContactLocaleUtils;

    move-result-object p0

    return-object p0
.end method
