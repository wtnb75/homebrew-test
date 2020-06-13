require 'formula'

class KubebuilderBin < Formula
  version '2.3.1'
  homepage 'https://github.com/kubernetes-sigs/kubebuilder'
  url "https://github.com/kubernetes-sigs/kubebuilder/releases/download/v#{version}/kubebuilder_#{version}_darwin_amd64.tar.gz"
  sha256 '39314d45053b6c31eb17e35c9b8d923f8a38277a9a136448345dd4b7f0f308f4'

  def install
    bin.install "bin/etcd"
    bin.install "bin/kube-apiserver"
    bin.install "bin/kubectl" => "kubectl.kubebuilder"
    bin.install "bin/kubebuilder"
  end
end
