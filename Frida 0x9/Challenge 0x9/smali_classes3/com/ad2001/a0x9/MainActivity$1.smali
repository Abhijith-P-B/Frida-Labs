.class Lcom/ad2001/a0x9/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ad2001/a0x9/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ad2001/a0x9/MainActivity;


# direct methods
.method constructor <init>(Lcom/ad2001/a0x9/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/ad2001/a0x9/MainActivity;

    .line 42
    iput-object p1, p0, Lcom/ad2001/a0x9/MainActivity$1;->this$0:Lcom/ad2001/a0x9/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .line 45
    const-string v0, "AES"

    iget-object v1, p0, Lcom/ad2001/a0x9/MainActivity$1;->this$0:Lcom/ad2001/a0x9/MainActivity;

    invoke-virtual {v1}, Lcom/ad2001/a0x9/MainActivity;->check_flag()I

    move-result v1

    const/16 v2, 0x539

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 47
    const-string v1, "hBCKKAqgxVhJMVTQS8JADelBUPUPyDiyO9dLSS3zho0="

    .line 48
    .local v1, "encryptedInput":Ljava/lang/String;
    const-string v2, "3000300030003003"

    .line 49
    .local v2, "key":Ljava/lang/String;
    const-string v4, ""

    .line 50
    .local v4, "decrypted":Ljava/lang/String;
    const/4 v5, 0x0

    .line 52
    .local v5, "cipher":Ljavax/crypto/Cipher;
    :try_start_0
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3

    move-object v5, v6

    .line 57
    nop

    .line 58
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object v0, v6

    .line 60
    .local v0, "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/4 v6, 0x2

    :try_start_1
    invoke-virtual {v5, v6, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_2

    .line 63
    nop

    .line 65
    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object v6

    .line 67
    .local v6, "decryptedBytes":[B
    :try_start_2
    new-instance v7, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>([B)V
    :try_end_2
    .catch Ljavax/crypto/BadPaddingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, v7

    .line 72
    nop

    .line 74
    iget-object v7, p0, Lcom/ad2001/a0x9/MainActivity$1;->this$0:Lcom/ad2001/a0x9/MainActivity;

    invoke-virtual {v7}, Lcom/ad2001/a0x9/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "You won "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 77
    .end local v0    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v1    # "encryptedInput":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "decrypted":Ljava/lang/String;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    .end local v6    # "decryptedBytes":[B
    goto :goto_0

    .line 70
    .restart local v0    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .restart local v1    # "encryptedInput":Ljava/lang/String;
    .restart local v2    # "key":Ljava/lang/String;
    .restart local v4    # "decrypted":Ljava/lang/String;
    .restart local v5    # "cipher":Ljavax/crypto/Cipher;
    .restart local v6    # "decryptedBytes":[B
    :catch_0
    move-exception v3

    .line 71
    .local v3, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 68
    .end local v3    # "e":Ljavax/crypto/IllegalBlockSizeException;
    :catch_1
    move-exception v3

    .line 69
    .local v3, "e":Ljavax/crypto/BadPaddingException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 61
    .end local v3    # "e":Ljavax/crypto/BadPaddingException;
    .end local v6    # "decryptedBytes":[B
    :catch_2
    move-exception v3

    .line 62
    .local v3, "e":Ljava/security/InvalidKeyException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-direct {v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 55
    .end local v0    # "secretKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    .end local v3    # "e":Ljava/security/InvalidKeyException;
    :catch_3
    move-exception v0

    .line 56
    .local v0, "e":Ljavax/crypto/NoSuchPaddingException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 53
    .end local v0    # "e":Ljavax/crypto/NoSuchPaddingException;
    :catch_4
    move-exception v0

    .line 54
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 80
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v1    # "encryptedInput":Ljava/lang/String;
    .end local v2    # "key":Ljava/lang/String;
    .end local v4    # "decrypted":Ljava/lang/String;
    .end local v5    # "cipher":Ljavax/crypto/Cipher;
    :cond_0
    iget-object v0, p0, Lcom/ad2001/a0x9/MainActivity$1;->this$0:Lcom/ad2001/a0x9/MainActivity;

    invoke-virtual {v0}, Lcom/ad2001/a0x9/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Try again"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 85
    :goto_0
    return-void
.end method
